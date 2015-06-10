json.array!(@week_programs) do |week_program|
  json.extract! week_program, :id, :date, :Branch_id, :Product_id, :quantity
  json.url week_program_url(week_program, format: :json)
end
