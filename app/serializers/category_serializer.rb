class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :number_events
  has_many :events

  def number_events
    object.events.size
  end
end
