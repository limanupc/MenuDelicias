# == Schema Information
#
# Table name: customers
#
#  id               :integer          not null, primary key
#  Identity_Type_id :integer
#  tipdocide_numero :string(255)
#  cli_appaterno    :string(255)
#  cli_apmaterno    :string(255)
#  cli_nombre       :string(255)
#  Sex_id           :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
