json.array!(@order_datails) do |order_datail|
  json.extract! order_datail, :id, :Order_id, :Product_id, :peddet_cantidad, :peddet_precio, :peddet_sub_total
  json.url order_datail_url(order_datail, format: :json)
end
