Feature: authentication
  In order to use the system
  As an user
  I need to log in

Scenario: Login
  Given I have logged in as "user@example"
  Then I should see "Signed in as: First User"
  And I should see "Logout"

Scenario: Logout
  Given I have logged in as any user
  When I click "Logout"
  Then I should see "Login"
  And I should see "You are not logged in"







  
