class User < ApplicationRecord
  has_one :profile_image

  has_many :califications
  has_many :events trough: :califications

  has_many :comments
  has_many :events trough: :comments

  has_many :user_interests
  has_many :interests trough: :user_interests

  has_many :user_events
  has_many :events trough: :user_events

  has_many :events
end
