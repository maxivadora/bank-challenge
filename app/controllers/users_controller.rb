class UsersController < ApplicationController
  include Doc::UserDoc

  # POST /sign_up
  def create
    user = User.create!(user_params)
    render json: user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :dni, :password, :password_confirmation)
  end
end
