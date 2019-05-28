# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  surname       :string
#  born_date     :date
#  age           :integer
#  password      :string
#  latitude      :float
#  longitude     :float
#  notifications :boolean
#  email         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ApplicationRecord

  #validacion
  validates(:name, presence: true, length: {maximum:30})
  validates(:surname, presence: true, length: {maximum:30})
  validates(:password, presence: true, length: {maximum:45})
  validates(:email, presence: true, length: {maximum:45})
  validates(:age, presence: true, numericality: {only_integer: true})

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
