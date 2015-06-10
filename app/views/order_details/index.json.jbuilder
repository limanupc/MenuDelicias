json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :Order_id, :Product_id, :quantity, :price, :partial
  json.url order_detail_url(order_detail, format: :json)
end
