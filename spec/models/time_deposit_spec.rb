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

require 'rails_helper'

RSpec.describe TimeDeposit, type: :model do
  it { should validate_presence_of(:deposit_amount) }
  it { should validate_presence_of(:exporation_at) }
end
