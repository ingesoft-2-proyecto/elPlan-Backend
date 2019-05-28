# == Schema Information
#
# Table name: comments
#
#  id              :integer          not null, primary key
#  comment         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  event_id        :integer
#  date_of_comment :datetime
#

class Comment < ApplicationRecord
  
  
  #validaciones
  validates(:comment, presence: true, length: {maximum:1000})

  #asociaciones
  belongs_to :user
  belongs_to :event
end
