class UserMailer < ApplicationMailer
    #default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://plan-datovarh.c9users.io/'
    print (@user.email)
    mail(to:  @user.email, subject: 'Bienvenido a el Plan')
  end
end
