class EmailConfirmationMailer < ApplicationMailer
  def send_link
    @email = params[:user].email
    token = params[:user].signed_id(purpose: 'email_confirmation')
    @link = "#{ENV['BACKEND_URL']}/verify?token=#{token}"
    mail(to: @email, subject: 'Confirm your sign up!')
  end
end
