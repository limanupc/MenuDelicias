json.array!(@identity_types) do |identity_type|
  json.extract! identity_type, :id, :description
  json.url identity_type_url(identity_type, format: :json)
end
