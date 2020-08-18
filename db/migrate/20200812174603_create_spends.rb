class CreateSpends < ActiveRecord::Migration[6.0]
  def change
    create_table :spends do |t|
      t.string :category
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
