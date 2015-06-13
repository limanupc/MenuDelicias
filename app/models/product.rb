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
    
    has_attached_file :picture,
                      styles:{medium: "300x300>", thumb: "100x100>"},
                      default_url:"/images/:style/missing.png"
    validates :picture, attachment_presence: true, presence: true
  
    #validacion para que el usario solo ingrese los tipos definidos
    validates_attachment :picture, 
                        content_type: { 
                          content_type: ["image/jpeg", "image/png","image/gif"]}
    
end
