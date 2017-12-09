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

Given(/^I click on Clear button$/) do
  find_element(id: "menu_clear").click
end

When(/^I enter "([^"]*)" in From field$/) do |value|
  find_element(id: "header_value_from").send_keys(value)
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id: "header_value_to").text
  puts("Expected value is " + value)
  puts("Actual value is " + actual_value)
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I click on From field$/) do
  find_element(id: "header_value_from").click
end

And(/^I tap "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split("")
  digits.each do |key|
    digit = Integer(key)
    press_keycode 7 + digit
  end
  sleep(3)
end