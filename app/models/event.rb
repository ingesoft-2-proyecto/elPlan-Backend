class Event < ApplicationRecord
  belongs_to :user

  has_many :scores
  has_many :users, through: :scores

  has_many :comments
  has_many :users, through: :comments

  has_many :user_events
  has_many :users, through: :user_events

  has_many :event_categories
  has_many :categories, through: :event_categories
  
  #Asociacion polimorfica
  has_many :images, as: :imageable
end
