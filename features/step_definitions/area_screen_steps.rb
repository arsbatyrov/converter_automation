Given(/^I click on Got it button$/) do
  find_element(id: "button1").click
end

When(/^I land on Area screen$/) do
  text("Area")
end

Given(/^I land on Help popup$/) do
  text("Help")
end