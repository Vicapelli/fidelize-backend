class RegistrationsController < ApplicationController
  # skip_before_action :require_login, only: [:create, :confirm_email]

  def create
    user = User.new(user_params)
    if user.save
      # EmailConfirmationMailer.with(user: user).send_link.deliver
      render json: { message: 'email_confirmation_sent' }
    else
      render json: { error: user.errors.full_messages.join(', ') }, status: 400
    end
  end

  def confirm_email
    user = User.find_signed!(params[:token], purpose: 'email_confirmation')
    user.activate!

    # REDIRECT TO LOGIN PAGE
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :login, :email, :password, :password_confirmation)
  end
end
