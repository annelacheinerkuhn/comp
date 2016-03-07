require 'sinatra'

get('/ro') do
  erb :comp
end

get('/:name') do
  @name = params[:name]
  erb :comp
end

post {'/signup'} do
	puts params[:name]
	puts params[:email]
	"Cheers for providing ya name and email cutface"
end