class EventMailer < ApplicationMailer
    def new_event(user, event)
        @event = event
        @user = user
        @url = 'https://plan-datovarh.c9users.io/'
        mail(to: @user.email, subject: 'A creado un evento en el plan app')
    end
end
