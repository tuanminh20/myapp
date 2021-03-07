# frozen_string_literal: true

class CreateProductVariantOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variant_options do |t|
      t.references :product, foreign_key: true, null: false
      t.references :variant_option, foreign_key: true, null: false

      t.timestamps
    end
  end
end
