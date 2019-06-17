# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  path           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_type :string
#  imageable_id   :integer
#

class Image < ApplicationRecord

   #validacion
   validates(:path, presence: true)

   #Asociacion polimorfica
   belongs_to :imageable, polymorphic: true
end
