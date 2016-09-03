#encoding: utf-8

require './lib/ahorcado'

describe 'Ahorcado' do

	it 'Con Yate devuelve true' do

		ahorcado = Ahorcado.new
		ahorcado.definirPalabra "Yate"
		result = ahorcado.validar("Yate")

		expect(result).to be == true
	end


	it 'Si NO ingresa Yate devuelve false' do

		ahorcado = Ahorcado.new
		
		ahorcado.definirPalabra "Yate"
		result = ahorcado.validar("lala")

		expect(result).to be == false
	end

	it 'Con Yate mantiene puntaje' do

		ahorcado = Ahorcado.new
		ahorcado.definirPalabra "Yate"
		ahorcado.validar("Yate")
		puntaje = ahorcado.puntaje
		expect(puntaje).to be == 5
	end


	it 'Con Lala resta un punto' do

		ahorcado = Ahorcado.new
		ahorcado.definirPalabra "Yate"

		ahorcado.validar("Lala")
		puntaje = ahorcado.puntaje

		expect(puntaje).to be == 4
	end

	it 'Con Lala tres veces resta tres punto' do

		ahorcado = Ahorcado.new
		ahorcado.definirPalabra "Yate"

		3.times {ahorcado.validar("Lala")}
		puntaje = ahorcado.puntaje

		expect(puntaje).to be == 2
	end

	it 'Con Lala cinco veces pierde' do

		ahorcado = Ahorcado.new
		ahorcado.definirPalabra "Yate"

		5.times {ahorcado.validar("Lala")}
		perdio = ahorcado.perdio

		expect(perdio).to be == true
	end

end
