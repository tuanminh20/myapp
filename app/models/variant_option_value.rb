# frozen_string_literal: true

# == Schema Information
#
# Table name: variant_option_values
#
#  id                :bigint           not null, primary key
#  code              :string(255)
#  thumbnail         :string(255)
#  value             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  variant_option_id :bigint           not null
#
# Indexes
#
#  index_variant_option_values_on_variant_option_id  (variant_option_id)
#
# Foreign Keys
#
#  fk_rails_...  (variant_option_id => variant_options.id)
#
class VariantOptionValue < ApplicationRecord
  belongs_to :variant_option
end
