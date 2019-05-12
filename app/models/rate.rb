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

class Rate < ApplicationRecord
  belongs_to :bank
  
  validates :value, presence: true
end
