# frozen_string_literal: true

# == Schema Information
#
# Table name: product_sizes
#
#  id               :bigint           not null, primary key
#  name             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_color_id :bigint           not null
#
# Indexes
#
#  index_product_sizes_on_product_color_id  (product_color_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_color_id => product_colors.id)
#
class ProductSize < ApplicationRecord
  belongs_to :product_color
  has_many :product_gallery_images
  has_one :product_price, as: :priceable
  has_one :product_mockup
end
