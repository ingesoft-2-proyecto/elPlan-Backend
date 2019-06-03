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

require 'test_helper'

class UserInterestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
