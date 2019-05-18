class Image < ApplicationRecord

    validates(:path, presence: true, length: {maximum:45})
    #Asociacion polimorfica
    belongs_to :imageable, polymorphic: true
end
