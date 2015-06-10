# == Schema Information
#
# Table name: order_details
#
#  id         :integer          not null, primary key
#  Order_id   :integer
#  Product_id :integer
#  quantity   :integer
#  price      :integer
#  partial    :integer
#  created_at :datetime
#  updated_at :datetime
#

class OrderDetail < ActiveRecord::Base
  belongs_to :Order
  belongs_to :Product
end
