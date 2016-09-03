class Ahorcado 
	
	def initialize
		#TODO: Generar palabra random
		@palabraCorrecta = "y"
    	end
	
	def validar(valor)
		valor == @palabraCorrecta
    	end

	def definirPalabra(palabra)
		@palabraCorrecta = "Yate"
	end

	def palabraCorrecta
		@palabraCorrecta
	end
end
