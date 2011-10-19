Given /^The user "user@example.com" has an account$/ do
  @user = User.create!(:name => 'First Name', :password => 'please', :email => "user@example.com")
end

When /^he logs in$/ do
  visit('/users/sign_in')
  fill_in('user_email', :with => @user.email)
  fill_in('user_password', :with => @user.password)
  click_button('Sign in')
end

Then /^he should see text "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end