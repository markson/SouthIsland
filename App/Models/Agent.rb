class Agent
	include DataMapper::Resource
	property :id, Serial
	property :name, Text
	has n, :trips, :through => Resource
end
