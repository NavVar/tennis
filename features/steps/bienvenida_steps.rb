Given(/^dado que me encuentro en la pagina principal$/) do
  visit '/'
end

Then(/^veo el mensaje "(.*?)"$/) do |mensaje|
	last_response.body.should =~ /#{mensaje}/m
end