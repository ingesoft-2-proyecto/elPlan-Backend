class EventSerializer < ActiveModel::Serializer
  attributes :name, :description, :address, :borough, :date_of_event, :cost, :type_of_public

  belongs_to :user

  has_many :user_events
  has_many :users, through: :user_events
end
