class Ahorcado 
	
	def initialize
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

end
