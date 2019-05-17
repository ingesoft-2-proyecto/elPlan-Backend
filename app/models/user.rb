class User < ApplicationRecord

  has_many :scores
  has_many :events, through: :scores

  has_many :comments
  has_many :events, through: :comments

  has_many :user_interests
  has_many :interests, through: :user_interests

  has_many :user_events
  has_many :events, through: :user_events

  has_many :events
  
  #Asociacion polimorfica
  has_many :images, as: :imageable
end
