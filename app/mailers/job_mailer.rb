class JobMailer < ApplicationMailer
    def job(user)
        @user = user
        @url = 'http://elplanbackend1.herokuapp.com'
        mail(to: @user.email, subject: 'El job se activó')
    end
end
