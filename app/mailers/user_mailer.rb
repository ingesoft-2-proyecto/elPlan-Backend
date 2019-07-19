class UserMailer < ApplicationMailer
    #default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://elplanbackend1.herokuapp.com'
    print (@user.email)
    mail(to:  @user.email, subject: 'Bienvenido a el Plan')
  end
end
