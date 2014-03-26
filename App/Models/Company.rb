class Company
	include DataMapper::Resource
	property :id, Serial
	property :name, String
	property :description, Text
	has n, :activities
end
