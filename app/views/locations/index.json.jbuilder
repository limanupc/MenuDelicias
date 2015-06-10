json.array!(@locations) do |location|
  json.extract! location, :id, :ubi_codigo, :description, :department, :province, :distric
  json.url location_url(location, format: :json)
end
