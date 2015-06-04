# == Schema Information
#
# Table name: correlatives
#
#  id               :integer          not null, primary key
#  branch_id        :integer
#  document_type_id :integer
#  cor_serie        :string(255)
#  cor_numero       :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Correlative < ActiveRecord::Base
  belongs_to :branch
  belongs_to :document_type
end
