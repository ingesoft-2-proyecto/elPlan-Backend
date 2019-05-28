# == Schema Information
#
# Table name: administrators
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Administrator < ApplicationRecord
    
    #validaciones
    validates(:name, presence: true, length: {maximum:30})
end
