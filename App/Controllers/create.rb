get '/create/activity' do
	@companies = Company.all
	haml :'activity/create'
end

