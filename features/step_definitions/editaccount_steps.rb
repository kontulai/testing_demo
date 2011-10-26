Given /^user has logged in$/ do
  login()
end

When /^I edit my account and resign$/ do
  visit('/users/edit')
  page.should have_content('Cancel my account')
  click_link('Cancel my account')

end

Then /^my user account is deleted$/ do
  page.should have_content('Bye! Your account was successfully cancelled. We hope to see you again soon.')
end
