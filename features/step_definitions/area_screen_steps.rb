Given(/^I land on Help popup$/) do
  puts("User lands on Help popup")
end

When(/^I click on Got it button$/) do
  puts("User clicks on Got it button")
end

Then(/^I land on Area screen$/) do
  puts("User lands on Area screen")
end

And(/^I see "([^"]*)" in From header$/) do |value|
  puts("Left header value is " + value)
end

And(/^I see "([^"]*)" in To header$/) do |value|
  puts("Right header value is #{value}")
end

When(/^I click on Swap button$/) do
  puts("User clicks Swap button")
end

Given(/^I click on Clear button$/) do
  puts("User clicks on Clear button")
end

When(/^I enter "([^"]*)" in From field$/) do |value|
  puts("User entered value #{value}")
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  puts("User sees #{value} in result field")
end