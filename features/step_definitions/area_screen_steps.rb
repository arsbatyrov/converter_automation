Given(/^I click on Got it button$/) do
  find_element(id: "button1").click
end

When(/^I land on Area screen$/) do
  text("Area")
end

Given(/^I land on Help popup$/) do
  text("Help")
end

And(/^I see "([^"]*)" in From header$/) do |value|
  actual_value = find_element(id: "header_text_unit_from").text
  puts("Expected value is " + value)
  puts("Actual value is " + actual_value)
end

And(/^I see "([^"]*)" in To header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  puts("Expected value is " + value)
  puts("Actual value is " + actual_value)
end

When(/^I click on Swap button$/) do
  find_element(id: "fab").click
end