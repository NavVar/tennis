Then(/^deberia ver "(.*?)" de los jugadores$/) do |mensaje|
  #last_response.body.should =~ /#{mensaje}/m
  last_response.body.should include {mensaje}
end
