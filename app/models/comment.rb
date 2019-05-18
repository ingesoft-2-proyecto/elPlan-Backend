class Comment < ApplicationRecord

  validates(:comment, presence: true, length: {maximum:1000})

  belongs_to :user
  belongs_to :event
end
