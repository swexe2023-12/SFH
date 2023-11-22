class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :stock_id
      t.integer :user_id
      t.timestamps
    end
  end
end
