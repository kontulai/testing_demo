Feature: authentication
  In order to use the system
  As an user
  I need to be logged in

Scenario: Login
  Given The user "user@example.com" has an account
  When he logs in
  Then he should see text "Signed in as: First User"
  And he should see a link "Logout"

Scenario: Logout
  Given I have logged in as any user
  When I click "Logout"
  Then I should see "Login"
  And I should see "You are not logged in"







  
