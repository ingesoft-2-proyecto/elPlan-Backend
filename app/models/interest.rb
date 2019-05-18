class Interest < ApplicationRecord

  #validacion
  validates(:name, presence: true, length: {maximum:20})

  #asociacion
  has_many :user_interests
  has_many :users, through: :user_interests
end
