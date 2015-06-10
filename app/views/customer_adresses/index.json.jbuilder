json.array!(@customer_adresses) do |customer_adress|
  json.extract! customer_adress, :id, :Customer_id, :address, :Location_id, :reference, :phone
  json.url customer_adress_url(customer_adress, format: :json)
end
