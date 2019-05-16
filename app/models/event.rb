class Event < ApplicationRecord
  belongs_to :user

  has_many :califications
  has_many :users trough: :califications

  has_many :comments
  has_many :users trough: :comments

  has_many :user_events
  has_many :users trough: :user_events

  has_many :event_images

  has_many :event_categories
  has_many :categories trough: :event_categories
end
