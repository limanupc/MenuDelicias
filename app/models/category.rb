# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Category < ActiveRecord::Base
    has_many :products, dependent: :destroy
    
    validates :description, presence:true
end