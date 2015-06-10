# == Schema Information
#
# Table name: correlatives
#
#  id               :integer          not null, primary key
#  Branch_id        :integer
#  document_type_id :integer
#  series           :string(255)
#  number           :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class CorrelativeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
