get '/trips' do
	@trips = Trip.all
	haml :'trip/trips-get'
end

post '/trips' do
	trip = Trip.create(
		booked_at:params['booked_at']
	)
	if trip.valid?
		trip.agents << Agent.get(params['agent_id'])
		if trip.valid?
			trip.save
			redirect to('/trips')
		end
	else
		@message = "Your entry is not valid"
		halt 400, haml(:error)
	end
end


