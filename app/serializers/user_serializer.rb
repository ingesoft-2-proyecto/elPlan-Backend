class UserSerializer < ActiveModel::Serializer
  attributes :name, :surname, :born_date, :age, :email
  
  has_many :events

  has_many :user_events
  has_many :events, through: :user_events
end
