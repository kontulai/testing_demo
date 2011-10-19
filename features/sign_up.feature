
Feature: signup
  In order use the service
  As a a new user
  I want to sign up

Scenario: singup
  Given user has not signed up or is not logged in
  When he fills the sign up form with name: "test" password: "testing" email: "test@testing.com"
  Then new user account has been created and user is logged in


  
