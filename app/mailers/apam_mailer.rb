class ApamMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.apam_mailer.notify.subject
  #
  def notify (user)
    
    @user = user
    

    mail to: user.email, subject : 'Boletos gratis, 50% de descuento'
  end
end
