class DefaultPlatformsController < ApplicationController
  before_action :set_default_platform, only: [:show, :update, :destroy]

  # GET /default_platforms
  def index
    @default_platforms = DefaultPlatform.all

    render json: @default_platforms
  end

  # GET /default_platforms/1
  def show
    render json: @default_platform
  end

  # POST /default_platforms
  def create
    @default_platform = DefaultPlatform.new(default_platform_params)

    if @default_platform.save
      render json: @default_platform, status: :created, location: @default_platform
    else
      render json: @default_platform.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /default_platforms/1
  def update
    if @default_platform.update(default_platform_params)
      render json: @default_platform
    else
      render json: @default_platform.errors, status: :unprocessable_entity
    end
  end

  # DELETE /default_platforms/1
  def destroy
    @default_platform.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_default_platform
      @default_platform = DefaultPlatform.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def default_platform_params
      params.require(:default_platform).permit(:name, :logo, :mime_type, :logo_name)
    end
end
