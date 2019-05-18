class Event < ApplicationRecord

  #validaciones
  validates(:borough, presence: true, length: {maximum:200})
  validates(:name, presence: true, length: {maximum:200})
  validates(:description, presence: true, length: {maximum:5000})
  validates(:cost, presence: true, numericality: {greater_than_or_equal_to: 0})
  validates(:type_of_public, presence: true, length: {maximum:200})
  validates(:address, presence: true, length: {maximum:200})

  #asocioaciones
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
