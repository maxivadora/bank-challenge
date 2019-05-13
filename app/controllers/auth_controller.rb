class AuthController < ApplicationController
  
  skip_before_action :authenticate_user!, only: [:login]

  # POST /login
  def login
    @user = User.find_by(dni: login_params[:dni])
    
    if @user && @user.authenticate(login_params[:password])
      auth_token = JsonWebToken.encode(user_id: @user.id)
      render json: { user: @user, auth_token: auth_token }, status: :ok
    else
      render json: { error: { message: "Invalid credentials" }}, status: :unauthorized
    end
  end

  private
  
  def login_params
    params.require(:login).permit(:dni, :password)
  end
end
