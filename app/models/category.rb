class Category < ApplicationRecord

  #validaciones
  validates(:name, presence: true, length: {maximum:20})
  
  #asociaciones
  has_many :event_categories
  has_many :events, through: :event_categories
end
