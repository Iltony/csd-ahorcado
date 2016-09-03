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
	#else
		#@palabra = "y"
	end
	
	#if (params[:letra]=='y')
	#	@palabra = "y"
	#	@gano = "GANO!"
	#else
		#@palabra = "y"
	#end
	erb :index
end
