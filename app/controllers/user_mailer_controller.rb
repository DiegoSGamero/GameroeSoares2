class UserMailerController < ApplicationController
  def new
    @contact = {}
  end

  def contact_email
    @contact = params[:contact] # Recebe os dados do formulário

    # Use os dados @contact para enviar o e-mail
    UserMailer.contact_email(@contact).deliver_now # Exemplo de como chamar o método de envio do email do Mailer
  end

  def send_email
    email_params = params.permit(:user_email, :subject, :body)
    UserMailer.contact_email(email_params).deliver_now
    redirect_to root_path, notice: 'E-mail enviado com sucesso!'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone_number, :message)
  end

end
