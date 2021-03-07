# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  has_many :product_variant_options, dependent: :destroy
  has_many :product_variants, dependent: :destroy
  has_many :product_variant_images, dependent: :destroy
end
