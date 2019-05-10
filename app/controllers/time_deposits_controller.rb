class TimeDepositsController < ApplicationController
  
  # POST /time_deposits
  def create
    time_deposit = TimeDeposit.create!(time_deposit_params)
    render json: { time_deposit: time_deposit }, status: :created
  end

  private

  def time_deposit_params
    params.require(:time_deposit).permit(:deposit_amout, :days)
  end
end
