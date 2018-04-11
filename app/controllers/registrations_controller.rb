class RegistrationsController < Devise::RegistrationsController
   def sign_up_params
    params.require(:user).permit(:shipper, :company, :email, :password, :password_confirmation)
  end
end
