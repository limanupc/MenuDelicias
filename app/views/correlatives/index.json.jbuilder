json.array!(@correlatives) do |correlative|
  json.extract! correlative, :id, :branch_id, :document_type_id, :cor_serie, :cor_numero
  json.url correlative_url(correlative, format: :json)
end
