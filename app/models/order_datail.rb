# == Schema Information
#
# Table name: order_datails
#
#  id               :integer          not null, primary key
#  Order_id         :integer
#  Product_id       :integer
#  peddet_cantidad  :integer
#  peddet_precio    :integer
#  peddet_sub_total :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class OrderDatail < ActiveRecord::Base
  belongs_to :Order
  belongs_to :Product
end
