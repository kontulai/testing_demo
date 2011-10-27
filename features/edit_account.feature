Feature: editaccount
  In order to change my details or resign
  As a user with an account
  I want to edit my account

#logs in the user
Background: the user has logged in
  Given The user "user@example.com" has an account

Scenario: resign
  Given user has logged in
  When I edit my account and resign
  Then my user account is deleted

