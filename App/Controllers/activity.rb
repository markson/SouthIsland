get '/activities' do
	@js_partial = "ancher-row"
	@activities = Activity.all
	@title = "Show all activities"
	haml :'activity/activities-get'
end

get '/activity/:id' do
	@activity = Activity.get(params[:id])
	@title = "Details of #{@activity.name}"
	haml :'activity/activity-get'
end

post '/activities' do
	@activity = Activity.create(
		name:params['name'],
		description:params['description'],
		adult_cost:params['adult_cost'].to_f,
		child_cost:params['child_cost'].to_f,
		latitude:params['latitude'].to_f,
		longitude:params['longitude'].to_f,
		company:Company.get(params['company_id'])
	)
	if @activity.valid?
		redirect to('/activities')
	else
		@message = "Your entry is not valid"
		halt 400, haml(:error)
	end
end

