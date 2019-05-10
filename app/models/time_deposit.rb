# == Schema Information
#
# Table name: time_deposits
#
#  id             :integer          not null, primary key
#  deposit_amount :decimal(9, 2)
#  expiration_at  :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bank_id        :integer
#  user_id        :integer
#
# Indexes
#
#  index_time_deposits_on_bank_id  (bank_id)
#  index_time_deposits_on_user_id  (user_id)
#

class TimeDeposit < ApplicationRecord
  belongs_to :bank
  belongs_to :user
  
  before_validation :set_expired_at

  validates :deposit_amount, presence: true
  validates :expiration_at, presence: true

  attr_accessor :duration_days

  private
  
  def set_expired_at
    self.expiration_at = Time.zone.now + duration_days.days
  end
end
