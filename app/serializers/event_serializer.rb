class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :borough, :date_of_event, :cost, :type_of_public, :category

  belongs_to :user
end
