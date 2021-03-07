# frozen_string_literal: true

# == Schema Information
#
# Table name: product_variant_images
#
#  id                 :bigint           not null, primary key
#  image              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  product_id         :bigint
#  product_variant_id :bigint           not null
#
# Indexes
#
#  index_product_variant_images_on_product_id          (product_id)
#  index_product_variant_images_on_product_variant_id  (product_variant_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (product_variant_id => product_variants.id)
#
class ProductVariantImage < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :product_variant
end
