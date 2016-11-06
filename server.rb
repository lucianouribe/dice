require 'pry'
require 'sinatra'

# root route
get '/' do
  erb :index
end
