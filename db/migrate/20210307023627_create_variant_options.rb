# frozen_string_literal: true

class CreateVariantOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :variant_options do |t|
      t.string :name
      t.integer :option_type, null: false, limit: 1, default: 0

      t.timestamps
    end
  end
end
