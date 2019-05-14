# == Schema Information
#
# Table name: rates
#
#  id         :bigint           not null, primary key
#  value      :decimal(5, 4)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bank_id    :bigint
#
# Indexes
#
#  index_rates_on_bank_id  (bank_id)
#
# Foreign Keys
#
#  fk_rails_...  (bank_id => banks.id)
#

require 'rails_helper'

RSpec.describe Rate, type: :model do
  it { should validate_presence_of(:rate) }
end
