class BanksController < ApplicationController
  include Doc::BankDoc
  
  def index
    @banks = Bank.order(name: :asc)
    render json: @banks
  end
end
