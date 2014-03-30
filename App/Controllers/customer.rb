get '/customers' do
	@js_partial = "ancher-row"
	@customers = Customer.all
	haml :'customer/customers-get'
end

post '/customers' do
	@customer = Customer.create(
		f_name:params['f_name'],
		l_name:params['l_name'],
		gender:params['gender'],
		:'date_of_birth' => params['date_of_birth']
	)
	if @customer.valid?
		redirect to('/customers')
	else
		@message = "Your entry is not valid"
		halt 400, haml(:error)
	end
end

get '/customer/:id' do
	@customer = Customer.get(params[:id])
	haml :'customer/customer-get'
end
