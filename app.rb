require 'sinatra'
require './lib/ahorcado'

get '/' do


	@palabra = "-"
	@puntaje = "5"
	erb :index
end

post '/ingresarLetra' do

	ahorcado = Ahorcado.new

	if (ahorcado.validar(params[:letra]))
		@palabra = "y"
		@gano = "GANÓ"
	else
		@palabra = "-"
		@gano = "PERDIÓ"
	end
	
	@puntaje = ahorcado.puntaje
	erb :index
end
