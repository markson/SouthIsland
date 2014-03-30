class Trip
	include DataMapper::Resource
	property :id, Serial
	property :booked_at, DateTime

	has n, :bookings
	has n, :activities, :through => :bookings
	has n, :agents, :through => Resource
end
