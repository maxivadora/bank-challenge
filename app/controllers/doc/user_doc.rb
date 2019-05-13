module Doc::UserDoc
  extend Apipie::DSL::Concern
  
  # sign_up
  api :POST, 'users', "Create new time deposit"
  header :Authorization, 'JWT token', required: true
  
  param :first_name, String, "User's first name", required: true
  param :last_name, String, "User's last name", requeired: true
  param :dni, String, "User's dni", requeired: true
  param :password, String, "Password account", requeired: true
  param :password_confirmation, String, "Password confirmation", requeired: true
  
  returns code: '201', desc: "User created successfully"
  
  error code: '422', desc: "Unprocessable entity"
  def create; end
end