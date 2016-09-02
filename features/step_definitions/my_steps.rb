When(/^inicia$/) do
  visit '/'
end

Then(/^dice "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^pulsa boton$/) do
  click_button("dale")
end

When(/^text es "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
