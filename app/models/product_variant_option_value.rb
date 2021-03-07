# frozen_string_literal: true

# == Schema Information
#
# Table name: product_variant_option_values
#
#  id                        :bigint           not null, primary key
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  product_variant_option_id :bigint           not null
#  variant_option_value_id   :bigint           not null
#
# Indexes
#
#  index_product_variant_option_values_on_product_variant_option_id  (product_variant_option_id)
#  index_product_variant_option_values_on_variant_option_value_id    (variant_option_value_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_variant_option_id => product_variant_options.id)
#  fk_rails_...  (variant_option_value_id => variant_option_values.id)
#
class ProductVariantOptionValue < ApplicationRecord
  belongs_to :product_variant_option
  belongs_to :variant_option_value
end
