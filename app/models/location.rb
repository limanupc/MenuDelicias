# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  ubi_codigo  :string(255)
#  description :string(255)
#  department  :string(255)
#  province    :string(255)
#  distric     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Location < ActiveRecord::Base
    has_many :branch, dependent: :destroy
    
    validates :description, presence:true
end
