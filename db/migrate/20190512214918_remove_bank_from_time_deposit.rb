class RemoveBankFromTimeDeposit < ActiveRecord::Migration[5.2]
  def change
    remove_reference :time_deposits, :bank, foreign_key: true
  end
end
