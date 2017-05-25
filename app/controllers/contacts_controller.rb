class ContactsController < ApplicationController
  def index
    @contact = Contact.new
    @page_title = "Fale conosco - Skeleton"
  end

  def create
    @contact = Contact.new(contact_params)
    if simple_captcha_valid?
      if EmailValidator.valid?(contact_params[:email])
        if @contact.save
          send_mail
        else
          flash[:error] = "Erro ao enviar contato"
        end
      else
        flash[:error] = "O formato do email é inválido"
      end
    else
      flash[:error] = "O texto não corresponde com a imagem"
    end
  end

  def send_mail
    if ContactMailer.send_mailer(contact_params).deliver_now
      redirect_to contacts_path('pt-BR'), flash: { notice: "Seus dados foram enviados com sucesso." }
    else
      flash[:error] = "Falhou. Tente novamente"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(
      :name, :email, :phone, :subject, :message
    )
  end
end
