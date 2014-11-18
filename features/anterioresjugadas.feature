Feature: AnterioresJugadas
Scenario Outline: veo las 3 ultimas partidas  
Given dado que me encuentro en la pagina de partida 
Then deberia ver "<salida>"
Examples:
| valor | salida |
| 1 | jugador1 puntaje2 jugador2 puntaje2 |
