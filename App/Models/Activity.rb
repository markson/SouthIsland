class Activity
	include DataMapper::Resource
	property :id,Serial
	property :name, String
	property :description, Text
	property :adult_cost, Integer
	property :child_cost, Integer
	property :latitude, Integer
	property :longitude, Integer

	belongs_to :company
	has n, :bookings
	has n, :trips, :through => :bookings
end
