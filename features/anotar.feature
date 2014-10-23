Feature: Anotar
Scenario: Anota el primer jugador
		Given dado que me encuentro en la pagina de partida 
		When presiono el boton "Anotar"  
		Then deberia ver '15  0'

Scenario: Anota dos veces el primer jugador y segundo jugador una vez  
		Given dado que me encuentro en la pagina de partida 
		When presiono el boton "Anotar"  
		Then deberia ver '30  15'
		
Scenario: Anota tres veces el primer y segundo jugador dos veces
		Given dado que me encuentro en la pagina de partida 
		When presiono el boton "Anotar"  
		Then deberia ver 'Gana  30' 

Scenario: Anota tres veces el primer y segundo jugador tres veces
		Given dado que me encuentro en la pagina de partida 
		When presiono el boton "Anotar"  
		Then deberia ver 'Deuce  Deuce' 
