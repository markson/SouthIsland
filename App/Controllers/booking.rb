get '/bookings' do
	@bookings = Booking.all
	haml :'booking/bookings-get'
end
