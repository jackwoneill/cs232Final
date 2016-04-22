json.array!(@trails) do |trail|
  json.extract! trail, :id, :name, :location, :length, :status, :can_ride
  json.url trail_url(trail, format: :json)
end
