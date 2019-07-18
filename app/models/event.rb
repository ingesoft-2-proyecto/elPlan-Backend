# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  borough        :string
#  date_of_event  :datetime
#  name           :string
#  description    :text
#  cost           :float
#  type_of_public :string
#  over           :boolean
#  latitude       :float
#  longitude      :float
#  address        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#

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


  has_one_attached :photo

  #Asociacion polimorfica
  has_many :images, as: :imageable

  scope :search_category,->(params){where(category: params)}
  scope :search_cost, -> (params){where("cost <= ?", params) }

end
