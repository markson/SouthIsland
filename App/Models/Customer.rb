class Customer
	include DataMapper::Resource
	property :id, Serial
	property :f_name, String
	property :l_name, String
	property :date_of_birth, Date
	property :gender, String

	has n, :bookings, through:Resource
end
