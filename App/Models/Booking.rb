class Booking
	include DataMapper::Resource
	property :id, Serial
	property :started_at, DateTime
	property :ended_at, DateTime
	belongs_to :activity
	belongs_to :trip
end
