# == Schema Information
#
# Table name: sexes
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Sex < ActiveRecord::Base
   # has_many :Customer
end
