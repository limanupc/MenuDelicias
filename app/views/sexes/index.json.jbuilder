json.array!(@sexes) do |sex|
  json.extract! sex, :id, :sex_descripcion
  json.url sex_url(sex, format: :json)
end
