require 'rubygems'
require 'bundler'
Bundler.setup(:default, :development)
Bundler.require(:default, :development)
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

Dir["./App/Controllers/*.rb", "./App/Models/*.rb"].each {|file| require file}

before do
	content_type 'application/json'
end
DataMapper.auto_upgrade!
