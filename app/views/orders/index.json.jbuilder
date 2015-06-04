json.array!(@orders) do |order|
  json.extract! order, :id, :Branch_id, :Customer_id, :ped_fecha_solicitud, :ped_fecha_entrega, :ped_hora_entrega, :ped_total, :ped_estado, :perso_atendio, :tipdoc_codigo, :cor_serie, :ped_fecha_comprobante
  json.url order_url(order, format: :json)
end
