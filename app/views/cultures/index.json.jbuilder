json.array!(@cultures) do |culture|
  json.extract! culture, :id, :name
  json.url culture_url(culture, format: :json)
end
