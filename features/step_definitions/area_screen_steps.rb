Given(/^I click on Got it button$/) do
  find_element(id: "button1").click
end

Given(/^I click on Clear button$/) do
  find_element(id: "menu_clear").click
end

Given(/^I land on Help popup$/) do
  text("Help")
end

When(/^I click on Swap button$/) do
  find_element(id: "fab").click
end

And(/^I see app menu$/) do
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Area']")
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Cooking']")
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Currency']")
end


When(/^I land on Area screen$/) do
  text("Area")
end

Then(/^I tap menu icon$/) do
  # find_element(id: "toolbar").find_element(accessibility_id: "Navigate Up").click
  find_element(id: "toolbar").find_element(xpath: "//android.widget.ImageButton[@content-desc='Navigate up']").click
end

When(/^I click on From field$/) do
  find_element(id: "header_value_from").click
end

When(/^I enter "([^"]*)" in From field$/) do |value|
  find_element(id: "header_value_from").send_keys(value)
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digit = Integer(value)
  press_keycode 7 + digit
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id: "header_value_to").text
  puts("Expected value is " + value)
  puts("Actual value is " + actual_value)
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
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

And(/^I tap "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split("")
  digits.each do |key|
    digit = Integer(key)
    puts(7+digit)
    press_keycode 7+digit
  end
  sleep(10)
end

When(/^I select "([^"]*)" from left column$/) do |value|
  find_element(id: "radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end