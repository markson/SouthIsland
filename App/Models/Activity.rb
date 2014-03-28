class Activity
	include DataMapper::Resource
	property :id,Serial
	property :name, String
	property :description, Text
	property :adult_cost, Float
	property :child_cost, Float
	property :latitude, Float
	property :longitude, Float

	belongs_to :company
	has n, :bookings
	has n, :trips, :through => :bookings
end
