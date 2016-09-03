When(/^inicia$/) do
  visit '/'
end

When(/^pulsa boton$/) do
  click_button("dale")
end

When(/^cargo campo con "(.*?)"$/) do |value|
  fill_in(:letra, :with => value)
end

When(/^text es "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^dice "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
