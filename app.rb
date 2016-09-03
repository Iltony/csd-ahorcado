require 'sinatra'
require './lib/ahorcado'

get '/' do
	@@ahorcado = Ahorcado.new
	
		@palabra = ""
		@@ahorcado.definirPalabra "Yate"
	
	@@ahorcado.palabraCorrecta.length.times do @palabra = @palabra + "-" end
	erb :index
end

post '/ingresarLetra' do
	if (@@ahorcado.validar(params[:palabra]))
		@palabra = params[:palabra]
		@gano = "GANO!"
	else
		@gano = "PERDIO!"
	end
	
	erb :index
end
