# == Schema Information
#
# Table name: banks
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bank < ApplicationRecord
  has_many :rates
  has_many :time_deposits, through: :rates
  has_one :last_rate, -> { order created_at: :desc }, class_name: 'Rate'
end
