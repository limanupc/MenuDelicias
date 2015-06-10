json.array!(@sexes) do |sex|
  json.extract! sex, :id, :description
  json.url sex_url(sex, format: :json)
end
