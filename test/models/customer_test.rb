# == Schema Information
#
# Table name: customers
#
#  id               :integer          not null, primary key
#  identity_type_id :integer
#  document_number  :string(255)
#  first_last_name  :string(255)
#  second_last_name :string(255)
#  name             :string(255)
#  mail             :string(255)
#  sex_id           :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
