class BankSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_rate

  def last_rate
    self.object.last_rate
  end
end
