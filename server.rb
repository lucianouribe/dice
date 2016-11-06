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

# add page
get '/add' do
  erb :add
end

post '/add' do
  $sum_of_all_arrays = []
  @user_list = []
  frase = params[:new_input]
  @frase = frase
  erb :add
end

# Not found page
not_found do
  status 404
  erb :not_found
end
