class NicknamesController < ApplicationController
  before_action :set_nickname, only: [:show, :update, :destroy]

  # GET /nicknames
  def index
    @nicknames = Nickname.all

    render json: @nicknames
  end

  # GET /nicknames/1
  def show
    render json: @nickname
  end

  # POST /nicknames
  def create
    @nickname = Nickname.new(nickname_params)

    if @nickname.save
      render json: @nickname, status: :created, location: @nickname
    else
      render json: @nickname.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nicknames/1
  def update
    if @nickname.update(nickname_params)
      render json: @nickname
    else
      render json: @nickname.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nicknames/1
  def destroy
    @nickname.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nickname
      @nickname = Nickname.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nickname_params
      params.require(:nickname).permit(:name, :accordance, :user, :password, :platform_id, :model_id)
    end
end
