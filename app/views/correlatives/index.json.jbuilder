json.array!(@correlatives) do |correlative|
  json.extract! correlative, :id, :Branch_id, :document_type_id, :series, :number
  json.url correlative_url(correlative, format: :json)
end
