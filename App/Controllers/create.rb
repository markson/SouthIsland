get '/create/activity' do
	@companies = Company.all
	haml :'create/activity'
end

get '/create/company' do
	haml :'create/company'
end

