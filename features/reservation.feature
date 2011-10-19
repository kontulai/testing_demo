Feature: reservation
  In order to handle resources
  As a registered user
  I want to be able to book and unbook resources

#logs in the user
Background: the user has logged in
  Given The user "user@example.com" has an account

Scenario: user can see a list of resources
  Given user has an account
  When logs in
  Then user can see list of resources

Scenario: user can see daily status of a resource
  Given user is logged in
  When user clicks a resource
  Then user can see it's daily status

Scenario: user can book a resource
  Given user has clicked a resource
  When user clicks a slot that is not occupied
  Then user has reserved the slot of a resource 






  
