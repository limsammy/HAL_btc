class AddSpotPriceToPriceBtc < ActiveRecord::Migration[5.1]
  def change
    add_column :price_btcs, :spot, :float
  end
end
