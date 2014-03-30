get '/agents' do
	@js_partial = "ancher-row"
	@agents = Agent.all
	haml :'agent/agents-get'
end

post '/agents' do
	@agent = Agent.create(
		name:params['name'],
	)
	if @agent.valid?
		redirect to('/agents')
	else
		@message = "Your entry is not valid"
		halt 400, haml(:error)
	end
end

get '/agent/:id' do
	@agent = Agent.get(params[:id])
	haml :'agent/agent-get'
end
