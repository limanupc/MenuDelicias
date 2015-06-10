# == Schema Information
#
# Table name: week_programs
#
#  id         :integer          not null, primary key
#  date       :date
#  Branch_id  :integer
#  Product_id :integer
#  quantity   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class WeekProgramTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
