module Doc::BankDoc
  extend Apipie::DSL::Concern
  
  # index
  api :GET, 'banks', "Banks list"
  header :Authorization, 'JWT token', required: true
  
  returns code: '200', desc: "Banks list"
  
  error code: '401', desc: "Unauthorized"
  error code: '401', desc: "Missing Token"
  def index; end
end