class CreateProductMockups < ActiveRecord::Migration[6.1]
  def change
    create_table :product_mockups do |t|
      t.string :front
      t.string :back
      t.references :product, foreign_key: true
      t.references :product_size, foreign_key: true, null: false

      t.timestamps
    end
  end
end
