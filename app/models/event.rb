class Event < ApplicationRecord

  validates(:borough, presence: true, length: {maximum:45})
  validates(:name, presence: true, length: {maximum:100})
  validates(:description, presence: true, length: {maximum:2000})
  validates(:cost, presence: true, numericality: {greater_than_or_equal_to: 0})
  validates(:type_of_public, presence: true, length: {maximum:20})
  validates(:address, presence: true, length: {maximum:30})


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
