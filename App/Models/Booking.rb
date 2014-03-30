class Booking
	include DataMapper::Resource
	property :id, Serial
	property :booked_at, DateTime
	belongs_to :activity
	belongs_to :trip
	has n, :customers, through:Resource
end
