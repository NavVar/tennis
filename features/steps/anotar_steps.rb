Then(/^deberia ver "(.*?)" aumentado$/) do |arg1|
 # last_response.body.should =~ /#{arg1}/m
  last_response.body.should include {arg1}
end

