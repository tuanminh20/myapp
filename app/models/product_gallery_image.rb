# frozen_string_literal: true

# == Schema Information
#
# Table name: product_gallery_images
#
#  id              :bigint           not null, primary key
#  image           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  product_id      :bigint
#  product_size_id :bigint
#
# Indexes
#
#  index_product_gallery_images_on_product_id       (product_id)
#  index_product_gallery_images_on_product_size_id  (product_size_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (product_size_id => product_sizes.id)
#
class ProductGalleryImage < ApplicationRecord
  belongs_to :product_size
  belongs_to :product
end
