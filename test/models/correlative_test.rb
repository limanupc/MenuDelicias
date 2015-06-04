# == Schema Information
#
# Table name: correlatives
#
#  id               :integer          not null, primary key
#  branch_id        :integer
#  document_type_id :integer
#  cor_serie        :string(255)
#  cor_numero       :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class CorrelativeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
