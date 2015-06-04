# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  category_id    :integer
#  pro_nombre     :string(255)
#  pro_comentario :string(255)
#  pro_precio     :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Product < ActiveRecord::Base
  belongs_to :category
end
