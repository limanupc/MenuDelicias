json.array!(@identuty_types) do |identuty_type|
  json.extract! identuty_type, :id, :description
  json.url identuty_type_url(identuty_type, format: :json)
end
