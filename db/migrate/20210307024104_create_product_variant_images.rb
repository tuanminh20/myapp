# frozen_string_literal: true

class CreateProductVariantImages < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variant_images do |t|
      t.string :image
      t.references :product, foreign_key: true
      t.references :product_variant, foreign_key: true, null: false

      t.timestamps
    end
  end
end
