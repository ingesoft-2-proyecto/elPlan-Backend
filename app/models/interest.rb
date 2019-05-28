# == Schema Information
#
# Table name: interests
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Interest < ApplicationRecord

  #validacion
  validates(:name, presence: true, length: {maximum:20})

  #asociacion
  has_many :user_interests
  has_many :users, through: :user_interests
end
