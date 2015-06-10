# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  ubi_codigo  :string(255)
#  description :string(255)
#  department  :string(255)
#  province    :string(255)
#  distric     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
