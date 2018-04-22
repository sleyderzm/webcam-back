class HeadQuartesController < ApplicationController
  before_action :set_head_quarte, only: [:show, :update, :destroy]

  # GET /head_quartes
  def index
    @head_quartes = HeadQuarte.all

    render json: @head_quartes
  end

  # GET /head_quartes/1
  def show
    render json: @head_quarte
  end

  # POST /head_quartes
  def create
    @head_quarte = HeadQuarte.new(head_quarte_params)

    if @head_quarte.save
      render json: @head_quarte, status: :created, location: @head_quarte
    else
      render json: @head_quarte.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /head_quartes/1
  def update
    if @head_quarte.update(head_quarte_params)
      render json: @head_quarte
    else
      render json: @head_quarte.errors, status: :unprocessable_entity
    end
  end

  # DELETE /head_quartes/1
  def destroy
    @head_quarte.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_head_quarte
      @head_quarte = HeadQuarte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def head_quarte_params
      params.require(:head_quarte).permit(:name, :address, :company_id)
    end
end
