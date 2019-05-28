# == Schema Information
#
# Table name: user_events
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  event_id   :integer
#

class UserEvent < ApplicationRecord
    
    #asociaciones
    belongs_to :user
    belongs_to :event
end
