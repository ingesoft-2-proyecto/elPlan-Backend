# == Schema Information
#
# Table name: user_events
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  event_id   :integer
#

require 'test_helper'

class UserEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
