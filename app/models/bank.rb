# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  name       :string
#  rate       :decimal(5, 4)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bank < ApplicationRecord
  validates :name, :rate, presence: true

  has_many :time_deposits
end
