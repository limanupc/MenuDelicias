json.array!(@branches) do |branch|
  json.extract! branch, :id, :suc_nombre, :suc_direccion, :location_id
  json.url branch_url(branch, format: :json)
end
