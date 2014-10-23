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
	
	$puntaje1 = $puntaje1 + 15


	erb :jugadores 
end


get '/jugadores2' do
	@jugador1= params[:jugador1]
	@jugador2= params[:jugador2]
	
	$puntaje2 = $puntaje2 + 15


	erb :jugadores 
end
