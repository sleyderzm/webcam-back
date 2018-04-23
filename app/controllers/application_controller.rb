class ApplicationController < ActionController::API
  include AuthValidation
  before_action :check_token

  def check_token
    result = validate_token
    if result[:code] != :ok then
      error! result[:code], :metadata => { :message => result[:message] }
    end
  end

  def login
    digest_password = User.digest_password(params[:password])
    user = User.find_by(:email => params[:email], password: digest_password)
    if user.nil? then
      render json: {:message=>'User or password incorrect for this site.', :error=>true}, status: :ok
      return
    end

    # Create a new session
    token = generateUserSession(user)
    render json: {:token => token, :role => getCurrentRole.role_id}, status: :ok
  end

  def logout
    if params[:token].nil? then
      render json: {:message=>"No session specified", :error=>true}, status: :ok
      return
    end
    userSession = Session.find_by_token(params[:token])
    if !userSession.nil? then
      invalidateUserSession userSession.user
    end
  end


  # Deletes a user existing token, if any.
  def invalidateUserSession(user)
    userSession = Session.find_by_user_id(user.id)
    if !userSession.nil? then
      userSession.delete
    end
  end

  # Generate a user session for the given user and returns a token.
  # This method would scarcely go to the db more than once, if that ever happens.
  def generateUserSession(user)

    begin
      token = SecureRandom.hex(20)
      userSession = Session.find_by_token(token)
    end until userSession.nil?

    userSession = Session.new
    userSession.user = user
    userSession.token = token
    userSession.save

    return token
  end

  private :generateUserSession, :invalidateUserSession



end
