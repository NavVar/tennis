require 'sinatra'

$puntaje1 = 0
$puntaje2 = 0
$jugadas = 1

get '/' do
	
	erb :bienvenida
end

post '/jugadores' do
	$jugador1= params[:jugador1]
	$jugador2= params[:jugador2]
	
	erb :jugadores 
end


get '/jugadores' do
#	$jugador1= params[:jugador1]
#	$jugador2= params[:jugador2]
	
	if $puntaje1 == 0 
		$puntaje1 = $puntaje1 + 15
	else
		if $puntaje1 == 15 
			$puntaje1 = $puntaje1 + 15
		else
			if $puntaje1 == 30 
				$puntaje1 = $puntaje1 +10
			end
		end
	end	

	erb :jugadores 
end

get '/jugadores2' do
#	$jugador1= params[:jugador1]
#	$jugador2= params[:jugador2]
	
	if $puntaje2 == 0 
		$puntaje2 = $puntaje2 + 15
	else
		if $puntaje2 == 15 
			$puntaje2 = $puntaje2 + 15
		else
			if $puntaje2 == 30 
				$puntaje2 = $puntaje2 +10
			end
		end
	end	

	erb :jugadores 
end



get '/volver' do
	if $jugadas == 1
		 $jugada1 = $jugador1 
		 $result1 = $puntaje1
		 $jugada2 = $jugador2 
		 $result2 = $puntaje2
		  
	else
		if $jugadas == 2
		 $jugada3 = $jugador1 
		 $result3 = $puntaje1
		 $jugada4 = $jugador2 
		 $result4 = $puntaje2
		end
		if $jugadas == 3
		 $jugada5 = $jugador1 
		 $result5 = $puntaje1
		 $jugada6 = $jugador2 
		 $result6 = $puntaje2
		end		
	end

		 $jugador1 = " "
		 $puntaje1 = 0
		 $jugador2 = " "
		 $puntaje2 = 0

	$jugadas = $jugadas +1
	erb :bienvenida 
end

