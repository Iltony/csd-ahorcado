Feature: Validacion de UI

Scenario: "Cuando inicia se muestra -"
	When inicia
	Then dice "-"

Scenario: "Cuando pulsa y muestra GANO!"
	Given inicia
	When cargo campo con "y"
	When pulsa boton
	Then dice "GANO!"
	
Scenario: "Cuando pulsa y falla"
	Given inicia
	When cargo campo con "z"
	When pulsa boton
	Then dice "PERDIO!"
	
