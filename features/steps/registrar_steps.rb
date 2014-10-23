Given(/^introduzco en el campo "(.*?)" el valor "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

Given(/^introduzco en el campo de "(.*?)" el valor "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^presiono el boton "(.*?)"$/) do |iniciar|
  click_button(iniciar)
end

Then(/^deberia ver "(.*?)"$/) do |mensaje|
 # last_response.body.should =~ /#{mensaje}/m
  last_response.body.should include {mensaje}
end