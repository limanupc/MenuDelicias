# == Schema Information
#
# Table name: branches
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  Location_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Branch < ActiveRecord::Base
  belongs_to :Location
end
