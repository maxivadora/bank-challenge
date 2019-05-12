class RemoveRateFromBank < ActiveRecord::Migration[5.2]
  def change
    remove_reference :time_deposits, :bank, index: true, foreign_key: true
    remove_column :banks, :rate, :decimal, precision: 5, scale: 4
    add_reference :time_deposits, :bank, foreign_key: true
  end
end
