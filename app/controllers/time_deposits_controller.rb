class TimeDepositsController < ApplicationController
  include Doc::TimeDepositDoc

  # GET /time_deposits
  def index
    time_deposits = current_user.time_deposits.includes(:bank)
    render json: time_deposits, status: :ok
  end

  # POST /time_deposits
  def create
    time_deposit = current_user.time_deposits.create!(time_deposit_params)
    render json: time_deposit, status: :created
  end

  private

  def time_deposit_params
    params.require(:time_deposit).permit(:deposit_amount, :duration_days, :rate_id)
  end
end
