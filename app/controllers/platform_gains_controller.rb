class PlatformGainsController < ApplicationController
  before_action :set_platform_gain, only: [:show, :update, :destroy]

  # GET /platform_gains
  def index
    @platform_gains = PlatformGain.all

    render json: @platform_gains
  end

  # GET /platform_gains/1
  def show
    render json: @platform_gain
  end

  # POST /platform_gains
  def create
    @platform_gain = PlatformGain.new(platform_gain_params)

    if @platform_gain.save
      render json: @platform_gain, status: :created, location: @platform_gain
    else
      render json: @platform_gain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /platform_gains/1
  def update
    if @platform_gain.update(platform_gain_params)
      render json: @platform_gain
    else
      render json: @platform_gain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /platform_gains/1
  def destroy
    @platform_gain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_gain
      @platform_gain = PlatformGain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def platform_gain_params
      params.require(:platform_gain).permit(:tokens, :value, :accordance, :gain, :nickname_id, :detail_id)
    end
end
