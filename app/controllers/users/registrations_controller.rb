class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def create

  end

  def account_update

  end

  private


  def sign_up_params
    binding.pry
    params.require(:user).permit(:password, :password_confirmation, :name, :avatar, :email, :phone)
  end
end