require 'sinatra'
require './lib/ahorcado'

@@palabraCorrecta = "A"
get '/' do
	@palabra = "-"
	erb :index
end

post '/ingresarLetra' do
	ahorcado = Ahorcado.new
	
	if (ahorcado.validar(params[:letra]))
		@palabra = "y"
		@gano = "GANO!"
	else
		@palabra = "-"
		@gano = "PERDIO!"
	end
	
	erb :index
end
