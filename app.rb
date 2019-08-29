require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'net/http'
require 'uri' 

require 'sinatra/activerecord'
require './models'

get '/' do
 @meals= Meal.all
 erb :index
end

post '/meals' do
 Meal.create!(name: params[:name], description: params[:description], calory: params[:calory])  
 redirect "/"
end

