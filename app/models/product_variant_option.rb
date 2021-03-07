# frozen_string_literal: true

# == Schema Information
#
# Table name: product_variant_options
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  product_id        :bigint           not null
#  variant_option_id :bigint           not null
#
# Indexes
#
#  index_product_variant_options_on_product_id         (product_id)
#  index_product_variant_options_on_variant_option_id  (variant_option_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (variant_option_id => variant_options.id)
#
class ProductVariantOption < ApplicationRecord
  belongs_to :product
  belongs_to :variant_option
  has_many :product_variant_option_values, dependent: :destroy
end
