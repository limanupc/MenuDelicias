# == Schema Information
#
# Table name: identity_types
#
#  id                    :integer          not null, primary key
#  tipdocide_descripcion :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

class IdentityType < ActiveRecord::Base
end
