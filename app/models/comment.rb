class Comment < ApplicationRecord
  
  
  #validaciones
  validates(:comment, presence: true, length: {maximum:1000})

  #asociaciones
  belongs_to :user
  belongs_to :event
end
