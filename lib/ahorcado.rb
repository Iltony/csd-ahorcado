class Ahorcado 
	
	def initialize
		@palabraCorrecta = "y"
    	end
	
	def validar(valor)
		valor == @palabraCorrecta
    	end
end
