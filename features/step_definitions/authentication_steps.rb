#Login Scenario
Given /^The user "user@example.com" has an account$/ do
  @user = User.create!(:name => 'First Name', :password => 'please', :email => "user@example.com")
end

When /^he logs in$/ do
  visit('/users/sign_in')
  fill_in('user_email', :with => @user.email)
  fill_in('user_password', :with => @user.password)
  click_button('Sign in')
end

Then /^he should see text "([^"]*)"$/ do |username|
  page.should have_content(username)
end

Then /^he should see a link "([^"]*)"$/ do |logout|
  page.should have_link(logout)
end

#Logout Scenario

Given /^I have logged in as any user$/ do
  #user must be logged in
  #when refactoring add login function here
end

When /^I click "([^"]*)"$/ do |logout|
  visit('/users/sign_out')
end

Then /^I should see "([^"]*)"$/ do |not_logged_in|
  page.should have_content(not_logged_in)
  puts not_logged_in
end


