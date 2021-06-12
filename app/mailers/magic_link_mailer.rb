class MagicLinkMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_email
    @volunteer = params[:volunteer]
    mail(to: @volunteer.Mail, subject: 'Vítejte!')
  end

  def magic_link
    @volunteer = params[:volunteer]
    mail(to: @volunteer.Mail, subject: "Nová žádost")
  end
  
end

