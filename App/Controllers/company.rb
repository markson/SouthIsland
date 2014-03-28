get '/companies' do
	@js_partial = 'ancher-row'
	@companies = Company.all
	@title = "All the Companies"
	haml :'company/companies-get'
end

get '/company/:id' do
	@company = Company.get(params[:id])
	@activities = @company.activities
	@title = "Details of #{@company.name}"
	haml :'company/company-get'
end

post '/companies' do
	@company = Company.create(
		name:params['name'],
		description:params['description'],
	)
	if @company.valid?
		redirect to('/companies')
	else
		@message = "Your entry is not valid"
		halt 400, haml(:error)
	end
end


