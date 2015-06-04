# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  ubi_codigo       :string(255)
#  ubi_departamento :string(255)
#  ubi_provincia    :string(255)
#  ubi_distrito     :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Location < ActiveRecord::Base
    has_many :branches
end
