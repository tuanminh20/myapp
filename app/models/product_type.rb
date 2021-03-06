# frozen_string_literal: true

# == Schema Information
#
# Table name: product_types
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  thumbnail  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_product_types_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class ProductType < ApplicationRecord
  belongs_to :product
  has_many :product_colors
  has_many :product_prices, as: :priceable
  has_many :product_gallery_images, as: :imageable
end
