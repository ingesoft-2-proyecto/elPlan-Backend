class JobMailer < ApplicationMailer
    def job(user)
        @user = user
        @url = 'http://localhost:3000'
        mail(to: @user.email, subject: 'Un evento está cerca')
    end
end