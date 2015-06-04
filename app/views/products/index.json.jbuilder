json.array!(@products) do |product|
  json.extract! product, :id, :category_id, :pro_nombre, :pro_comentario, :pro_precio
  json.url product_url(product, format: :json)
end
