class Administrator < ApplicationRecord
    
    #validaciones
    validates(:name, presence: true, length: {maximum:30})
end
