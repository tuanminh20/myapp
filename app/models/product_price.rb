# frozen_string_literal: true

# == Schema Information
#
# Table name: product_prices
#
#  id             :bigint           not null, primary key
#  price          :decimal(8, 2)
#  priceable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  priceable_id   :bigint
#  product_id     :bigint
#
# Indexes
#
#  index_product_prices_on_priceable_type_and_priceable_id  (priceable_type,priceable_id)
#  index_product_prices_on_product_id                       (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class ProductPrice < ApplicationRecord
  belongs_to :priceable, polymorphic: true
end
