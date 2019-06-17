class CommentMailer < ApplicationMailer
    def new_comment(user, comment)
        @comment = comment
        @user = user
        @url = 'https://plan-datovarh.c9users.io/'
        mail(to: @user.email, subject: 'Nuevo comentario realizado en el plan app')
    end
end
