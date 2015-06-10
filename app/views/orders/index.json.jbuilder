json.array!(@orders) do |order|
  json.extract! order, :id, :Branch_id, :Customer_id, :date_application, :delivery_date, :delivery_time, :total, :flag, :staff, :Document_type_id, :series, :date_voucher
  json.url order_url(order, format: :json)
end
