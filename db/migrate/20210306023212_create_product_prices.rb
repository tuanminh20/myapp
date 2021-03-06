class CreateProductPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :product_prices do |t|
      t.decimal :price, precision: 8, scale: 2
      t.references :product, foreign_key: true
      t.bigint  :priceable_id
      t.string  :priceable_type

      t.timestamps
    end

    add_index :product_prices, [:priceable_type, :priceable_id]
  end
end
