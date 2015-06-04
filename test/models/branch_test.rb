# == Schema Information
#
# Table name: branches
#
#  id            :integer          not null, primary key
#  suc_nombre    :string(255)
#  suc_direccion :string(255)
#  location_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class BranchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
