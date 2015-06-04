json.array!(@locations) do |location|
  json.extract! location, :id, :ubi_codigo, :ubi_departamento, :ubi_provincia, :ubi_distrito
  json.url location_url(location, format: :json)
end
