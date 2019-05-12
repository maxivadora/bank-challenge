# == Schema Information
#
# Table name: rates
#
#  id         :integer          not null, primary key
#  value      :decimal(5, 4)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bank_id    :integer
#
# Indexes
#
#  index_rates_on_bank_id  (bank_id)
#

FactoryBot.define do
  factory :rate do
    bank { nil }
    value { "9.99" }
  end
end
