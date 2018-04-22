class PaysheetsController < ApplicationController
  before_action :set_paysheet, only: [:show, :update, :destroy]

  # GET /paysheets
  def index
    @paysheets = Paysheet.all

    render json: @paysheets
  end

  # GET /paysheets/1
  def show
    render json: @paysheet
  end

  # POST /paysheets
  def create
    @paysheet = Paysheet.new(paysheet_params)

    if @paysheet.save
      render json: @paysheet, status: :created, location: @paysheet
    else
      render json: @paysheet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paysheets/1
  def update
    if @paysheet.update(paysheet_params)
      render json: @paysheet
    else
      render json: @paysheet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paysheets/1
  def destroy
    @paysheet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paysheet
      @paysheet = Paysheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def paysheet_params
      params.require(:paysheet).permit(:since_date, :until_date, :value, :gain, :dollar_value, :rmr, :head_quartes_id)
    end
end
