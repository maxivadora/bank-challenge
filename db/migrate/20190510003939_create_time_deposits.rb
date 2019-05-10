class CreateTimeDeposits < ActiveRecord::Migration[5.2]
  def change
    create_table :time_deposits do |t|
      t.references :bank, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :expiration_at
      t.decimal :deposit_amount, precision: 9, scale: 2

      t.timestamps
    end
  end
end
