# frozen_string_literal: true

# == Schema Information
#
# Table name: product_variants
#
#  id               :bigint           not null, primary key
#  combination_name :string(255)
#  mockup_back      :string(255)
#  mockup_front     :string(255)
#  price            :decimal(8, 2)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_id       :bigint           not null
#
# Indexes
#
#  index_product_variants_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class ProductVariant < ApplicationRecord
  belongs_to :product
  has_many :product_variant_images, dependent: :destroy
end
