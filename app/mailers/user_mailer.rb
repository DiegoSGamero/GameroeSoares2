class UserMailer < ApplicationMailer
  default from: 'contato.gamero.topografia@gmail.com'

  def contact_email(email_params)
    @user_email = email_params[:user_email]
    @subject = email_params[:subject]
    @body = email_params[:body]

    mail(to: 'contato.gamero.topografia@gmail.com', subject: @subject)
  end
end
