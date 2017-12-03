class CreatePriceBtcs < ActiveRecord::Migration[5.1]
  def change
    create_table :price_btcs do |t|
      t.float :buy
      t.float :sell

      t.timestamps
    end
  end
end
