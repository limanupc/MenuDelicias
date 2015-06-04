json.array!(@week_programs) do |week_program|
  json.extract! week_program, :id, :prosemmen_fecha, :Branch_id, :Product_id
  json.url week_program_url(week_program, format: :json)
end
