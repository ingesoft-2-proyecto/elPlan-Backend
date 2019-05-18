class UserEvent < ApplicationRecord
    
    #asociaciones
    belongs_to :user
    belongs_to :event
end
