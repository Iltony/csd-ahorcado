#encoding: utf-8

require './lib/ahorcado'

describe 'Ahorcado' do

	it 'Si ingresa y devuelve true' do

		ahorcado = Ahorcado.new
		
		result = ahorcado.validar("y")

		expect(result).to be == true
	end

	it 'Si NO ingresa y devuelve false' do

		ahorcado = Ahorcado.new
		
		result = ahorcado.validar("x")

		expect(result).to be == false
	end

end
