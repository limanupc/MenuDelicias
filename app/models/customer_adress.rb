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

class CustomerAdress < ActiveRecord::Base
  belongs_to :Customer
  belongs_to :Location
end
