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
 
 has_secure_password #permite autenticacion basada en token de forma segura
 
 #mount_uploader :avatar, AvatarUploader

 #validacion
 validates(:name, presence: true, length: {maximum:30})
 validates(:surname, presence: true, length: {maximum:30})
 validates(:password_digest, presence: true, length: {maximum:45, minimum: 5})
 validates(:email, presence: true, length: {maximum:45}, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP})
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

 scope :search_age,->(params){where(age: params)}
end
