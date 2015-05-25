class UsersController < ApplicationController


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :admin)
  end
end
