# frozen_string_literal: true

# == Schema Information
#
# Table name: product_mockups
#
#  id              :bigint           not null, primary key
#  back            :string(255)
#  front           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  product_id      :bigint
#  product_size_id :bigint           not null
#
# Indexes
#
#  index_product_mockups_on_product_id       (product_id)
#  index_product_mockups_on_product_size_id  (product_size_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (product_size_id => product_sizes.id)
#
class ProductMockup < ApplicationRecord
  belongs_to :product
  belongs_to :product_size
end
