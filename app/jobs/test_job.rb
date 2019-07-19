class TestJob < ApplicationJob
  queue_as :default

  def perform(user)
    @user = user
    puts "job funciona"
    #respond_to do |format|
      #if @user.save
        # Tell the UserMailer to send a welcome email after save
        JobMailer.job(@user).deliver_now
        
        #render json: @user, status: :created, location: @user
        #format.html { redirect_to(@user, notice: 'Usuario creado.') }
      #  format.json { render json: @user, status: :created, location: @user }
      #else
        #format.html { render action: 'new' }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
        #render json: @user.errors, status: :unprocessable_entity
    #end
  end
end
