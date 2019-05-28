# == Schema Information
#
# Table name: user_interests
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  interest_id :integer
#

class UserInterest < ApplicationRecord
  
  #asociaciones
  belongs_to :user
  belongs_to :interest
end
