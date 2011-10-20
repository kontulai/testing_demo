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
  page.should have_content('Second User')
  #today's date
  #table of today's hour
end

Given /^user has clicked a resource$/ do
  login()
  click_link('Resource1')
end

When /^user clicks a slot that is not occupied$/ do
  #TODO: index number
  click_link('reserve')
end

Then /^user has reserved the slot of a resource$/ do
  #index
  page.should have_content('Reserved for:')
end