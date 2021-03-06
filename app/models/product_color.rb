# frozen_string_literal: true

# == Schema Information
#
# Table name: product_colors
#
#  id              :bigint           not null, primary key
#  code            :string(255)
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  product_type_id :bigint           not null
#
# Indexes
#
#  index_product_colors_on_product_type_id  (product_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_type_id => product_types.id)
#
class ProductColor < ApplicationRecord
  belongs_to :product_type
  has_many :product_sizes
  has_one :product_price, as: :priceable
end
