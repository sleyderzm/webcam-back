class AppliedSanctionsController < ApplicationController
  before_action :set_applied_sanction, only: [:show, :update, :destroy]

  # GET /applied_sanctions
  def index
    @applied_sanctions = AppliedSanction.all

    render json: @applied_sanctions
  end

  # GET /applied_sanctions/1
  def show
    render json: @applied_sanction
  end

  # POST /applied_sanctions
  def create
    @applied_sanction = AppliedSanction.new(applied_sanction_params)

    if @applied_sanction.save
      render json: @applied_sanction, status: :created, location: @applied_sanction
    else
      render json: @applied_sanction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /applied_sanctions/1
  def update
    if @applied_sanction.update(applied_sanction_params)
      render json: @applied_sanction
    else
      render json: @applied_sanction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /applied_sanctions/1
  def destroy
    @applied_sanction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applied_sanction
      @applied_sanction = AppliedSanction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def applied_sanction_params
      params.require(:applied_sanction).permit(:value, :date, :name, :description, :model_id, :sanction_id, :detail_id)
    end
end
