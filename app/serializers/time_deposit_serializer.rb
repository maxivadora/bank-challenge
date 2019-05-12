# == Schema Information
#
# Table name: time_deposits
#
#  id             :integer          not null, primary key
#  deposit_amount :decimal(9, 2)
#  expiration_at  :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  rate_id        :integer
#  user_id        :integer
#
# Indexes
#
#  index_time_deposits_on_rate_id  (rate_id)
#  index_time_deposits_on_user_id  (user_id)
#

class TimeDepositSerializer < ActiveModel::Serializer
  attributes :id, :expiration_at, :deposit_amount, :bank

  def bank
    {
      name: self.object.bank.name,
      rate: self.object.bank.rate
    }
  end
end
