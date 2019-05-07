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

FactoryBot.define do
  factory :bank do
    name { "Banco Nacion" }
    rate { "0.100" }
  end
end
