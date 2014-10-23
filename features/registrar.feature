Feature: Registrar
Scenario: Registrar
Given dado que me encuentro en la pagina principal
Given introduzco en el campo "jugador1" el valor "<valor>"
Given introduzco en el campo de "jugador2" el valor "<valor>"
When presiono el boton "Iniciar"
Then deberia ver "<salida>"
