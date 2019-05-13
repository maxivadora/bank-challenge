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

class TimeDepositSerializer < ActiveModel::Serializer
  attributes :id, :expiration_at, :deposit_amount, :interest_amount, :bank, :rate, :porcentage_difference

  def bank
    {
      name: self.object.bank.name
    }
  end
  
  def rate
    {
      value: self.object.rate.value
    }
  end

  def porcentage_difference
    self.object.porcentage_difference
  end
end
