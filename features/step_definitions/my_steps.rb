When(/^inicia aplicacion en modo prueba con palabra Yate$/) do
  visit '/?modoPrueba'
end

When(/^pulsa boton$/) do
  click_button("dale")
end

When(/^cargo campo con "(.*?)"$/) do |value|
  fill_in(:palabra, :with => value)
end

When(/^text es "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^dice "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^puntaje es (\d+)$/) do |text|
  last_response.body.should =~ /#{text}/m
end
