json.array!(@customers) do |customer|
  json.extract! customer, :id, :identity_type_id, :document_number, :first_last_name, :second_last_name, :name, :mail, :sex_id
  json.url customer_url(customer, format: :json)
end
