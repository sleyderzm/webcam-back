class DeductionsController < ApplicationController
  before_action :set_deduction, only: [:show, :update, :destroy]

  # GET /deductions
  def index
    @deductions = Deduction.all

    render json: @deductions
  end

  # GET /deductions/1
  def show
    render json: @deduction
  end

  # POST /deductions
  def create
    @deduction = Deduction.new(deduction_params)

    if @deduction.save
      render json: @deduction, status: :created, location: @deduction
    else
      render json: @deduction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deductions/1
  def update
    if @deduction.update(deduction_params)
      render json: @deduction
    else
      render json: @deduction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deductions/1
  def destroy
    @deduction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deduction
      @deduction = Deduction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deduction_params
      params.require(:deduction).permit(:name, :value, :description, :admin_deduction_id, :detail_id)
    end
end
