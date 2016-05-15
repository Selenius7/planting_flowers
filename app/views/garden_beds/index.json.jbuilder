json.array!(@garden_beds) do |garden_bed|
  json.extract! garden_bed, :id
  json.url garden_bed_url(garden_bed, format: :json)
end
