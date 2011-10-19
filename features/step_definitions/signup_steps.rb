Given /^user has not signed up or is not logged in$/ do
  #clear database here
end

When /^he fills the sign up form with name: "([^"]*)" password: "([^"]*)" email: "([^"]*)"$/ do |name, pass, email|
  visit('/users/sign_up')
  fill_in('user_email', :with => email)
  fill_in('user_name', :with => name)
  fill_in('user_password', :with => pass)
  fill_in('user_password_confirmation', :with => pass)
  click_button('Sign up')    
end

Then /^new user account has been created and user is logged in$/ do
  page.should have_content('Welcome! You have signed up successfully.')
  #check whether logged in
end
