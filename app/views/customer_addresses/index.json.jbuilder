json.array!(@customer_addresses) do |customer_address|
  json.extract! customer_address, :id, :Customer_id, :clidir_direccion, :Location_id, :clidir_referencia, :clidir_telefono
  json.url customer_address_url(customer_address, format: :json)
end
