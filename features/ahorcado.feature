Feature: Validacion de UI

Scenario: "Cuando inicia se muestra ----"
	When inicia aplicacion en modo prueba con palabra Yate
	Then dice "----"

Scenario: "Cuando ingresa Yate muestra GANO!"
	Given inicia aplicacion en modo prueba con palabra Yate
	When cargo campo con "Yate"
	When pulsa boton
	Then dice "GANÓ"
	
Scenario: "Cuando pulsa y falla"
	Given inicia aplicacion en modo prueba con palabra Yate
	When cargo campo con "z"
	When pulsa boton
	Then dice "PERDIÓ"
	
Scenario: "Cuando inicia puntaje es 5
	Given inicia aplicacion en modo prueba con palabra Yate
	Then puntaje es 5


Scenario: "Cuando falla puntaje es 4"
	Given inicia aplicacion en modo prueba con palabra Yate
	And puntaje es 5
	When cargo campo con "z"
	When pulsa boton
	Then puntaje es 4

Scenario: "Cuando falla 3 veces puntaje es 2"
	Given inicia aplicacion en modo prueba con palabra Yate
	And puntaje es 5
	When cargo campo con "z"
	When pulsa boton
	When pulsa boton
	When pulsa boton
	Then puntaje es 2

Scenario: "Cuando tiene puntaje y acierta el puntaje se mantiene igual"
	Given inicia aplicacion en modo prueba con palabra Yate
	And puntaje es 5
	When cargo campo con "Yate"
	When pulsa boton
	Then puntaje es 5
