# frozen_string_literal: true

class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants do |t|
      t.string :combination_name
      t.decimal :price, precision: 8, scale: 2
      t.string :mockup_front
      t.string :mockup_back
      t.references :product, foreign_key: true, null: false

      t.timestamps
    end
  end
end
