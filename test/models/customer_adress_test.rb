# == Schema Information
#
# Table name: customer_adresses
#
#  id          :integer          not null, primary key
#  Customer_id :integer
#  address     :string(255)
#  Location_id :integer
#  reference   :string(255)
#  phone       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class CustomerAdressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
