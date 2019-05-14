# == Schema Information
#
# Table name: banks
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Bank, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:rate) }
end
