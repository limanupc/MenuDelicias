# == Schema Information
#
# Table name: sexes
#
#  id              :integer          not null, primary key
#  sex_descripcion :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Sex < ActiveRecord::Base
end
