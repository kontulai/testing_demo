def xpath_row_containing(a, b)
  #{}"//table/tr[contains(., '0:00 - 1:00') and contains(., 'Slot is Free,')]"
  "//table/tr[contains(., '#{a}') and contains(., '#{b}')]"
end

Given /^user has an account$/ do
  #use predefined user
end

When /^logs in$/ do
  login()
end

Then /^user can see list of resources$/ do
  page.should have_content('Resource1')
  #...
end

Given /^user is logged in$/ do
  login()
end

When /^user clicks a resource$/ do
  #predefined resources
  click_link('Resource1')
end

Then /^user can see it's daily status$/ do
  page.should have_content('Reservations for today')
  #check that it has a table
  #and some prefilled slots
end

Given /^user has clicked a resource$/ do
  login()
  click_link('Resource1')
end

When /^user clicks "([^"]*)" button for a time slot: "([^"]*)", which displays "([^"]*)"$/ do |button_name, slot, is_free_text|
  row = find(:xpath, xpath_row_containing(slot, is_free_text))
  row.click_button(button_name)
end

Then /^the same slot: "([^"]*)" displays: "([^"]*)"$/ do |slot, is_reserved_text|
  #row can be found
  row = find(:xpath, xpath_row_containing(slot, is_reserved_text))
  
end

When /^user clicks: "([^"]*)" for slot: "([^"]*)"  with status: "([^"]*)"$/ do |button_name, slot, is_reserved_text|
  row = find(:xpath, xpath_row_containing(slot, is_reserved_text))
  row.click_button(button_name)
end

Then /^the reservation for slot: "([^"]*)" is cancelled and now has a status: "([^"]*)"$/ do |slot, is_free_text|
  row = find(:xpath, xpath_row_containing(slot, is_free_text))
end


