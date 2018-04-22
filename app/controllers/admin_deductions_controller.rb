class AdminDeductionsController < ApplicationController
  before_action :set_admin_deduction, only: [:show, :update, :destroy]

  # GET /admin_deductions
  def index
    @admin_deductions = AdminDeduction.all

    render json: @admin_deductions
  end

  # GET /admin_deductions/1
  def show
    render json: @admin_deduction
  end

  # POST /admin_deductions
  def create
    @admin_deduction = AdminDeduction.new(admin_deduction_params)

    if @admin_deduction.save
      render json: @admin_deduction, status: :created, location: @admin_deduction
    else
      render json: @admin_deduction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin_deductions/1
  def update
    if @admin_deduction.update(admin_deduction_params)
      render json: @admin_deduction
    else
      render json: @admin_deduction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin_deductions/1
  def destroy
    @admin_deduction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_deduction
      @admin_deduction = AdminDeduction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_deduction_params
      params.require(:admin_deduction).permit(:name, :value, :description, :company_id)
    end
end
