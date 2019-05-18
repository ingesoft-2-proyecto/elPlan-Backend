class Category < ApplicationRecord

  validates(:name, presence: true, length: {maximum:20})
  
  has_many :event_categories
  has_many :events, through: :event_categories
end
