class UserInterest < ApplicationRecord
  
  #asociaciones
  belongs_to :user
  belongs_to :interest
end
