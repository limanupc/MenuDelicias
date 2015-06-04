# == Schema Information
#
# Table name: orders
#
#  id                    :integer          not null, primary key
#  Branch_id             :integer
#  Customer_id           :integer
#  ped_fecha_solicitud   :date
#  ped_fecha_entrega     :date
#  ped_hora_entrega      :time
#  ped_total             :integer
#  ped_estado            :integer
#  perso_atendio         :integer
#  tipdoc_codigo         :integer
#  cor_serie             :string(255)
#  ped_fecha_comprobante :date
#  created_at            :datetime
#  updated_at            :datetime
#

class Order < ActiveRecord::Base
  belongs_to :Branch
  belongs_to :Customer
end
