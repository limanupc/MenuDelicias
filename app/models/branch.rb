# == Schema Information
#
# Table name: branches
#
#  id            :integer          not null, primary key
#  suc_nombre    :string(255)
#  suc_direccion :string(255)
#  location_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Branch < ActiveRecord::Base
  belongs_to :location
end

def self.search(search)

 if search 

    where('suc_nombre LIKE ?', "%#{search}%")

  else

    scoped

  end

end
