require 'sinatra'
require './lib/ahorcado'

@@palabraCorrecta = "A"
get '/' do
	@palabra = "-"
	erb :index
end

get '/ingresarLetra' do
	
	#if(params[:letra]=="y")
		@palabra = "y"
		@gano = "GANO!"
	#else
		#@palabra = "y"
	#end
	erb :index
end
