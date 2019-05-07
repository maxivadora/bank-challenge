class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string :name
      t.decimal :rate, precision: 5, scale: 4

      t.timestamps
    end
  end
end
