# == Schema Information
#
# Table name: document_types
#
#  id                 :integer          not null, primary key
#  tipdoc_descripcion :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class DocumentType < ActiveRecord::Base
end
