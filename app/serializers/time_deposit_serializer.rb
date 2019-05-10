class TimeDepositSerializer < ActiveModel::Serializer
  attributes :id, :expiration_at, :deposit_amount, :bank

  def bank
    {
      name: self.object.bank.name,
      rate: self.object.bank.rate
    }
  end
end
