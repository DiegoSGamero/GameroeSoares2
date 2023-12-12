class UserMailerController < ApplicationController
  def new
    @email = Email.new
  end

  def contact_email
    # Lógica para enviar o e-mail usando o mailer
    UserMailer.contact_email(params[:email]).deliver_now
  end

  def send_email
    email_params = params.permit(:user_email, :subject, :body)
    UserMailer.contact_email(email_params).deliver_now
    redirect_to root_path, notice: 'E-mail enviado com sucesso!'
  end
end
