class MagicLinkMailer < ApplicationMailer
  default from: 'tonda138@gmail.com'

  def welcome_email
    @volunteer = params[:volunteer]
    mail(to: @volunteer.Mail, subject: 'Vítejte!')
  end
end

