# Preview all emails at http://localhost:3000/rails/mailers/apam_mailer
class ApamMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/apam_mailer/notify
  def notify
    ApamMailer.notify 
  end

end
