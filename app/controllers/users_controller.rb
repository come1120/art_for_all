class UsersController < ApplicationController

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,:work,:birth_year)
  end
end
