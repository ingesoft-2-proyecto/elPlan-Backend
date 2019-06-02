class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :born_date, :age, :email

  has_many :events
end
