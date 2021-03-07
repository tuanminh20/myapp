# frozen_string_literal: true

# == Schema Information
#
# Table name: variant_options
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  option_type :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class VariantOption < ApplicationRecord
  has_many :variant_option_values, dependent: :destroy
end
