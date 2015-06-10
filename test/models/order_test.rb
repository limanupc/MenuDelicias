# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  Branch_id        :integer
#  Customer_id      :integer
#  date_application :date
#  delivery_date    :date
#  delivery_time    :time
#  total            :integer
#  flag             :string(255)
#  staff            :string(255)
#  Document_type_id :integer
#  series           :string(255)
#  date_voucher     :date
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
