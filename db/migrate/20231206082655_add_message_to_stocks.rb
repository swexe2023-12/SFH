class AddMessageToStocks < ActiveRecord::Migration[7.0]
  def change
    add_column :stocks, :message, :string
  end
end
