class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.string :content
      t.timestamps
    end
  end
end
