class EventCategory < ApplicationRecord
  
  #asociaciones
  belongs_to :category
  belongs_to :event
end
