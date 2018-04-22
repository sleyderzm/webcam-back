require 'digest'

module AuthValidation

  def getCurrentUser
    if !@currentUser.nil?
      return @currentUser
    else
      return Session.find_by_token(params[:token]).user
    end

  end

  def setCurrentUser(user)
    @currentUser = user
  end

  def getCurrentRole
    if !@currentUser.nil?
        return @currentUser.role
    else
      return Session.find_by_token(params[:token]).user.role
    end
  end

  def validate_token
    controllerSymbol = controller_name.to_sym

    if  @@public_access.has_key? controllerSymbol then
      tmpVal = @@public_access[controllerSymbol]
      if !tmpVal.nil? && tmpVal.index(action_name.to_sym) != nil then
        return {:code => :ok}
      end
    end

    token = params[:token] || cookies[:auth_token]

    if token.blank? then
      return {:code => :unauthenticated, :message => 'No token specified'}
    end

    userSession = Session.find_by_token token
    if userSession.nil? then
      return {:code => :forbidden, :message => 'Invalid token'}
    end

    if  @@admin_actions.has_key? controllerSymbol then
      tmpVal = @@admin_actions[controllerSymbol]
      if !tmpVal.nil? && tmpVal.index(action_name.to_sym) != nil then
          return {:code => :forbidden, :message => 'You need admin priveleges to perform this action'} unless userSession.user.isAdmin?
      end
    end

    @currentUser = userSession.user
    return {:code => :ok}
  end

  @@admin_actions = {}
  @@public_access = {}

  def self.admin_access(name)
    # Admin actions field
    @@admin_actions = @@admin_actions.merge(name)
  end

  def self.public_access(name)
    # Public actions field
    @@public_access = @@public_access.merge(name)
  end

end