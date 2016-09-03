require 'sinatra'
require './lib/ahorcado'

@@palabraCorrecta = "A"
get '/' do
	@palabra = "-"
	erb :index
end

post '/ingresarLetra' do
	if (params[:letra]=='y')
		@palabra = params[:letra]
		@gano = "GANO!"
	else
		@palabra = "-"
		@gano = "PERDIO!"
	end
	erb :index
end
