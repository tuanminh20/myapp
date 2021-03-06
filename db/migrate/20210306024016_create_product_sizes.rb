class CreateProductSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :product_sizes do |t|
      t.string :name
      t.references :product_color, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
