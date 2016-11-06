require 'pry'
require 'sinatra'

# root route
get '/' do
  erb :index
end

post '/' do
  pregunta = params[:user_input]
  @question = pregunta
  erb :index
end

# Not found page
not_found do
  status 404
  erb :not_found
end
