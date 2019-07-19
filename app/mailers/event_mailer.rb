class EventMailer < ApplicationMailer
    def new_event(user, event)
        @event = event
        @user = user
        @url = 'http://elplanbackend1.herokuapp.com'
        mail(to: @user.email, subject: 'A creado un evento en el plan app')
    end
end
