class SanctionsController < ApplicationController
  before_action :set_sanction, only: [:show, :update, :destroy]

  # GET /sanctions
  def index
    @sanctions = Sanction.all

    render json: @sanctions
  end

  # GET /sanctions/1
  def show
    render json: @sanction
  end

  # POST /sanctions
  def create
    @sanction = Sanction.new(sanction_params)

    if @sanction.save
      render json: @sanction, status: :created, location: @sanction
    else
      render json: @sanction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sanctions/1
  def update
    if @sanction.update(sanction_params)
      render json: @sanction
    else
      render json: @sanction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sanctions/1
  def destroy
    @sanction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sanction
      @sanction = Sanction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sanction_params
      params.require(:sanction).permit(:name, :value, :code, :description, :company_id)
    end
end
