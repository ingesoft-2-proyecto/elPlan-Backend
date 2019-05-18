class Score < ApplicationRecord

    #validacion
    validates(:score, presence: true, numericality: {greater_than_or_equal_to: 1 , less_than_or_equal_to: 5})

    #asociacion
    belongs_to :user
    belongs_to :event
end
