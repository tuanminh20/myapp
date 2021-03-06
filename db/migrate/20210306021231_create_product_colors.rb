class CreateProductColors < ActiveRecord::Migration[6.1]
  def change
    create_table :product_colors do |t|
      t.string :name
      t.string :code
      t.references :product_type, foreign_key: true, null: false

      t.timestamps
    end
  end
end
