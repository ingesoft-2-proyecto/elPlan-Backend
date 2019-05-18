class Administrator < ApplicationRecord
  validates(:name, presence: true, length: {maximum:30})
end
