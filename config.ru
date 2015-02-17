require 'rubygems'
require 'sinatra'
require 'active_record'
require 'mysql2'
require 'json'

# Setup database
ActiveRecord::Base.establish_connection(
{	adapter:'mysql2',
	database:'proyect_db',
	username:'root',
	password:'09074105'
})

# Require all models
Dir['./models/*'].each {|file| require file }

# Require all controllers
Dir['./controllers/*'].each {|file| require file }

run Sinatra::Application
