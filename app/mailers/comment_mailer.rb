class CommentMailer < ApplicationMailer
    def new_comment(user, comment)
        @comment = comment
        @user = user
        @url = 'http://localhost:3000'
        mail(to: @user.email, subject: 'Nuevo comentario realizado en el plan app')
    end
end
