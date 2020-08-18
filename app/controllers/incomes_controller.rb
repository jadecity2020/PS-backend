class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :update, :destroy]

  # GET /incomes
  def index
    @incomes = Income.all.order('created_at DESC')

    render json: @incomes.to_json
  end

  # GET /incomes/1
  def show
    render json: @income.to_json
  end

  # POST /incomes
  def create
    @income = Income.new(income_params)

    if @income.save
      render json: @income, status: :created, location: @income
    else
      render json: @income.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /incomes/1
  def update
    if @income.update(income_params)
      render json: @income
    else
      render json: @income.errors, status: :unprocessable_entity
    end
  end

  # DELETE /incomes/1
  def destroy
    @income.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def income_params
      params.require(:income).permit(:amount)
    end
end
