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

FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    dni { "MyString" }
    password_digest { "MyString" }
  end
end
