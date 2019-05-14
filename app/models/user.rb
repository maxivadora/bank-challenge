# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  dni             :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :dni, presence: true
  validates :dni, uniqueness: true, numericality: { only_integer: true }

  has_many :time_deposits
end
