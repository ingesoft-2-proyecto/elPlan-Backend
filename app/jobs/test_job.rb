class TestJob < ApplicationJob
  queue_as :default

  def perform()
    events = Event.all

    events.each do |individual_event|
      if(individual_event.date_of_event != nil) 
        seconds = Time.now - individual_event.date_of_event.to_time 
        puts seconds
        
        @users = individual_event.users

        @users.each do |individual_user|
          if(seconds <= 86400)
            JobMailer.job(individual_user).deliver_now
          end
        end
      end
    end
  end
end