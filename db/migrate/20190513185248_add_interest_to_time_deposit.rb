class AddInterestToTimeDeposit < ActiveRecord::Migration[5.2]
  def change
    add_column :time_deposits, :interest_amount, :decimal, precision: 10, scale: 2
  end
end
