require 'sinatra'
require './lib/ahorcado'

get '/' do

	@@ahorcado = Ahorcado.new
	@palabra = ""
	@@ahorcado.definirPalabra "Yate"
	@@ahorcado.palabraCorrecta.length.times do @palabra = @palabra + "-" end
	@puntaje = @@ahorcado.puntaje

	erb :index
end

post '/ingresarLetra' do


	if (@@ahorcado.validar(params[:palabra]))
		@palabra = params[:palabra]
		@gano = "GANÓ!"
	else
		@gano = "PERDIÓ!"
	end
	
	@puntaje = @@ahorcado.puntaje
	erb :index
end
