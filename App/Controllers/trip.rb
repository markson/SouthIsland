get '/trips/:id' do
	Trip.get(params[:id]).to_json
end

get '/trips' do
	Trip.find
end

put '/trips' do
	Trip.create
end
