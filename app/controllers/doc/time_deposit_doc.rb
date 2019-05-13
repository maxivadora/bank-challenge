module Doc::TimeDepositDoc
  extend Apipie::DSL::Concern
  
  # index
  api :GET, 'time_deposits', "Time deposits list"
  header :Authorization, 'JWT token', required: true
  
  returns code: '200', desc: "Time deposits list"
  
  error code: '401', desc: "Unauthorized"
  error code: '401', desc: "Missing Token"
  def index; end

  # create
  api :POST, 'time_deposits', "Create new time deposit"
  header :Authorization, 'JWT token', required: true
  
  param :duration_days, Integer, "Time deposits days", required: true
  param :deposit_amount, Integer, "Tatal amount to be deposit", requeired: true
  param :rate_id, Integer, "Rate's id", requeired: true
  
  returns code: '201', desc: "Time deposit created successfully"
  
  error code: '401', desc: "Unauthorized"
  error code: '401', desc: "Missing Token"
  error code: '422', desc: "Unprocessable entity"
  def create; end
end