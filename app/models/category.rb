class Category < ApplicationRecord
  has_many :event_categories
  has_many :events trough: :event_categories
end
