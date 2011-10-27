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
  When user clicks "reserve" button for a time slot: "3:00 - 4:00", which displays "Slot is Free"
  Then the same slot: "3:00 - 4:00" displays: "Reserved for You"   

Scenario: user can cancel a resource
  Given user has clicked a resource
  When user clicks: "cancel" for slot: "1:00 - 2:00"  with status: "Reserved for You"
  Then the reservation for slot: "1:00 - 2:00" is cancelled and now has a status: "Slot is Free"







  
