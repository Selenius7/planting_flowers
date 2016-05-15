json.array!(@elevations) do |elevation|
  json.extract! elevation, :id
  json.url elevation_url(elevation, format: :json)
end
