# frozen_string_literal: true

class CreateProductVariantOptionValues < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variant_option_values do |t|
      t.references :product_variant_option, foreign_key: true, null: false
      t.references :variant_option_value, foreign_key: true, null: false

      t.timestamps
    end
  end
end
