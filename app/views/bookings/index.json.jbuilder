json.array!(@bookings) do |booking|
  json.extract! booking, :id, :start_time, :end_time, :place_id, :user_id
  json.url booking_url(booking, format: :json)
end
