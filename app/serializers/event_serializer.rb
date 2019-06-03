class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :borough, :date_of_event, :cost, :type_of_public

  belongs_to :user
  has_many :categories
end
