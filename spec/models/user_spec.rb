# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  dni             :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:first_name)}
  it { should validate_presence_of(:last_name)}
  it { should validate_presence_of(:dni)}
  it { should validate_uniqueness_of(:dni)}
  it { should validate_numericality_of(:dni).only_integer}
end
