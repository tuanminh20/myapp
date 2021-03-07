# frozen_string_literal: true

class CreateVariantOptionValues < ActiveRecord::Migration[6.1]
  def change
    create_table :variant_option_values do |t|
      t.string :value
      t.string :code
      t.string :thumbnail
      t.references :variant_option, foreign_key: true, null: false

      t.timestamps
    end
  end
end
