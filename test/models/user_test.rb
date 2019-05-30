# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  surname       :string
#  born_date     :date
#  age           :integer
#  password      :string
#  latitude      :float
#  longitude     :float
#  notifications :boolean
#  email         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
