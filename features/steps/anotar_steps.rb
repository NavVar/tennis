Then(/^deberia ver  (\d+) (\d+)$/) do |puntaje1, puntaje2|
  last_response.body.should include #{puntaje1}
  last_response.body.should include #{puntaje2}
end

Then(/^deberia ver '(\d+)  (\d+)'$/) do |arg1, arg2|
  last_response.body.should include #{arg1}
  last_response.body.should include #{arg2}
end


Then(/^deberia ver 'Gana  (\d+)'$/) do |arg1|
  last_response.body.should include #{arg1}
end

Then(/^deberia ver 'Deuce  Deuce'$/) do
 last_response.body.should include #{Deuce Deuce}
end
