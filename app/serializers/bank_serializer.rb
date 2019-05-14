# == Schema Information
#
# Table name: banks
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BankSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_rate

  def last_rate
    self.object.last_rate
  end
end
