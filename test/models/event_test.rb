# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  borough        :string
#  date_of_event  :datetime
#  name           :string
#  description    :text
#  cost           :float
#  type_of_public :string
#  over           :boolean
#  latitude       :float
#  longitude      :float
#  address        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
