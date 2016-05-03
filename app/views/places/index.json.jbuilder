json.array!(@places) do |place|
  json.extract! place, :id, :name, :description, :location
  json.url place_url(place, format: :json)
end
