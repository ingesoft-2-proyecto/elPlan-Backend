class Interest < ApplicationRecord
  has_many :user_interests
  has_many :users trough: :user_interests
end
