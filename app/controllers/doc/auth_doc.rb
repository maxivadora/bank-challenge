module Doc::AuthDoc
  extend Apipie::DSL::Concern
  
  # login
  api :POST, 'login', "User login with dni and password"
  
  param :dni, String, desc: "User's dni", required: true
  param :password, String, desc: "Password for login", required: true
  
  returns code: '200', desc: "Return user and auth_token" do
    param :user, Object, desc: "User object", required: true
    param :auth_token, String, desc: "JWT token", required: true
  end
  
  error code: '404', desc: "Not Found"
  error code: '401', desc: "Unauthorized"
  def login; end 
end