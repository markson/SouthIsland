get 'activities' do
	Activity.all.to_json
end
