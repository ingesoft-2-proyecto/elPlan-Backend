class Image < ApplicationRecord
    #Asociacion polimorfica
    belongs_to :imageable, polymorphic: true
end
