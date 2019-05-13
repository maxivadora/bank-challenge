# == Schema Information
#
# Table name: time_deposits
#
#  id              :integer          not null, primary key
#  deposit_amount  :decimal(9, 2)
#  expiration_at   :datetime
#  interest_amount :decimal(10, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  rate_id         :integer
#  user_id         :integer
#
# Indexes
#
#  index_time_deposits_on_rate_id  (rate_id)
#  index_time_deposits_on_user_id  (user_id)
#

class TimeDeposit < ApplicationRecord
  DAYS_OF_YEAR = 365

  belongs_to :user
  belongs_to :rate
  has_one :bank, through: :rate
  
  before_validation :set_expired_at
  after_create :calculate_and_set_interest_amount

  validates :deposit_amount, presence: true
  validates :expiration_at, presence: true

  def porcentage_difference
    self.rate.value/DAYS_OF_YEAR
  end
  
  attr_accessor :duration_days

  private
  
  def set_expired_at
    self.expiration_at = Time.zone.now + duration_days.days
  end

  def calculate_and_set_interest_amount
    interes_per_day = self.rate.value/DAYS_OF_YEAR
    self.update!(interest_amount: deposit_amount * interes_per_day * duration_days)
  end
end
