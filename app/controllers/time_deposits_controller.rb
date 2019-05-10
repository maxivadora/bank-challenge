class TimeDepositsController < ApplicationController
  # GET /time_deposits
  def index
    @time_deposits = current_user.time_deposits
  end

  # POST /time_deposits
  def create
    time_deposit = current_user.time_deposits.create!(time_deposit_params)
    render json: { time_deposit: time_deposit }, status: :created
  end

  private

  def time_deposit_params
    params.require(:time_deposit).permit(:deposit_amount, :duration_days, :bank_id)
  end
end
