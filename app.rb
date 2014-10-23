require 'sinatra'

$puntaje1 = 0
$puntaje2 = 0

get '/' do
	erb :bienvenida
end

post '/jugadores' do
	@jugador1= params[:jugador1]
	@jugador2= params[:jugador2]
	
	erb :jugadores 
end


get '/jugadores' do
	@jugador1= params[:jugador1]
	@jugador2= params[:jugador2]
	
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
