class CreatePriceBtcs < ActiveRecord::Migration[5.1]
  def change
    create_table :price_btcs do |t|

      t.timestamps
    end
  end
end
