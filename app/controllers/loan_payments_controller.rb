class LoanPaymentsController < ApplicationController
  before_action :set_loan_payment, only: [:show, :update, :destroy]

  # GET /loan_payments
  def index
    @loan_payments = LoanPayment.all

    render json: @loan_payments
  end

  # GET /loan_payments/1
  def show
    render json: @loan_payment
  end

  # POST /loan_payments
  def create
    @loan_payment = LoanPayment.new(loan_payment_params)

    if @loan_payment.save
      render json: @loan_payment, status: :created, location: @loan_payment
    else
      render json: @loan_payment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loan_payments/1
  def update
    if @loan_payment.update(loan_payment_params)
      render json: @loan_payment
    else
      render json: @loan_payment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loan_payments/1
  def destroy
    @loan_payment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_payment
      @loan_payment = LoanPayment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loan_payment_params
      params.require(:loan_payment).permit(:value, :detail_id, :loan_id)
    end
end
