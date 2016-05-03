json.array!(@pictures) do |picture|
  json.extract! picture, :id, :img_url, :place_id
  json.url picture_url(picture, format: :json)
end
