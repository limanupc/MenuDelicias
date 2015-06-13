# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  category_id :integer
#  name        :string(255)
#  description :string(255)
#  price       :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
    belongs_to :category

    validates :name, presence:true
end
