class ContactMailer < ApplicationMailer
  default from: ENV['FROM_MAIL']

  def send_mailer(contact)
    @contact = contact
    mail(
      to: ENV['FROM_MAIL'],
      from: contact['email'],
      subject: 'Contato'
    )
  end
end
