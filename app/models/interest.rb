class Interest < ApplicationRecord

  validates(:name, presence: true, length: {maximum:20})

  has_many :user_interests
  has_many :users, through: :user_interests
end
