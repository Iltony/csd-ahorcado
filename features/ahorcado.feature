Feature: Validacion de UI

Scenario: "Cuando inicia se muestra ----"
	When inicia aplicacion en modo prueba con palabra Yate
	Then dice "----"

Scenario: "Cuando ingresa Yate muestra GANO!"
	Given inicia aplicacion en modo prueba con palabra Yate
	When cargo campo con "Yate"
	When pulsa boton
	Then dice "GANO!"
	
Scenario: "Cuando pulsa y falla"
	Given inicia aplicacion en modo prueba con palabra Yate
	When cargo campo con "z"
	When pulsa boton
	Then dice "PERDIO!"
	
