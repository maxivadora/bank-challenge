# == Schema Information
#
# Table name: time_deposits
#
#  id              :bigint           not null, primary key
#  deposit_amount  :decimal(9, 2)
#  expiration_at   :datetime
#  interest_amount :decimal(10, 2)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  rate_id         :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_time_deposits_on_rate_id  (rate_id)
#  index_time_deposits_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (rate_id => rates.id)
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe TimeDeposit, type: :model do
  it { should validate_presence_of(:deposit_amount) }
  it { should validate_presence_of(:exporation_at) }
end
