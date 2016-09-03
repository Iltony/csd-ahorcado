Feature: Validacion de UI

Scenario: "Cuando inicia se muestra -"
	When inicia
	Then dice "-"

Scenario: "Cuando pulsa y muestra GANÓ"
	Given inicia
	When cargo campo con "y"
	When pulsa boton
	Then dice "GANÓ"
	
Scenario: "Cuando pulsa y falla"
	Given inicia
	When cargo campo con "z"
	When pulsa boton
	Then dice "PERDIÓ"
	
