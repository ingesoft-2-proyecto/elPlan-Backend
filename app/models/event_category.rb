# == Schema Information
#
# Table name: event_categories
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :integer
#  category_id :integer
#

class EventCategory < ApplicationRecord
  
  #asociaciones
  belongs_to :category
  belongs_to :event
end
