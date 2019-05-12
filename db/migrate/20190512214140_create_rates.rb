class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.references :bank, foreign_key: true
      t.decimal :value, precision: 5, scale: 4

      t.timestamps
    end
  end
end
