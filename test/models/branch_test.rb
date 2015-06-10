# == Schema Information
#
# Table name: branches
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  Location_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class BranchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
