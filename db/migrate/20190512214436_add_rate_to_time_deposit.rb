class AddRateToTimeDeposit < ActiveRecord::Migration[5.2]
  def change
    add_reference :time_deposits, :rate, foreign_key: true
  end
end
