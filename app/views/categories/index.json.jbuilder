json.array!(@categories) do |category|
  json.extract! category, :id, :cat_descripcion
  json.url category_url(category, format: :json)
end
