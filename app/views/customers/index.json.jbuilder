json.array!(@customers) do |customer|
  json.extract! customer, :id, :Identity_Type_id, :tipdocide_numero, :cli_appaterno, :cli_apmaterno, :cli_nombre, :Sex_id
  json.url customer_url(customer, format: :json)
end
