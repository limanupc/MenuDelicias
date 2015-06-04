# == Schema Information
#
# Table name: customer_addresses
#
#  id                :integer          not null, primary key
#  Customer_id       :integer
#  clidir_direccion  :string(255)
#  Location_id       :integer
#  clidir_referencia :string(255)
#  clidir_telefono   :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class CustomerAddress < ActiveRecord::Base
  belongs_to :Customer
  belongs_to :Location
end
