class Ahorcado 
	
	def initialize
		#TODO: Generar palabra random
		@palabraCorrecta = "y"
		@puntos = 5
    	end
	
	def validar(valor)
		if (valor == @palabraCorrecta)
			esValido = true
		else
			esValido = false
			@puntos = @puntos - 1
		end
		esValido
    	end

	def puntaje
		@puntos
    	end

	def definirPalabra(palabra)
		@palabraCorrecta = "Yate"
	end

	def palabraCorrecta
		@palabraCorrecta
	end
end
