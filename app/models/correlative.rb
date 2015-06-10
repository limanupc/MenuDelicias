# == Schema Information
#
# Table name: correlatives
#
#  id               :integer          not null, primary key
#  Branch_id        :integer
#  document_type_id :integer
#  series           :string(255)
#  number           :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Correlative < ActiveRecord::Base
  belongs_to :Branch
  belongs_to :document_type
end
