# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord

  #validaciones
  validates(:name, presence: true, length: {maximum:20})
  
  #asociaciones
  has_many :event_categories
  has_many :events, through: :event_categories
  
  
end
