json.array!(@open_times) do |open_time|
  json.extract! open_time, :id, :start_time, :end_time, :place_id, :user_id
  json.url open_time_url(open_time, format: :json)
end
