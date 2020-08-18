class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
