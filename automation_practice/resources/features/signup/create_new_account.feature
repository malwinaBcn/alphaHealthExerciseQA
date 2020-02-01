
@signup
Feature: sign up features
 As a free user
 I want to register on my site
 So that I can enjoy my online shop site


@smoke
Scenario: register with a valid User
Given I am not a registered user 
And I am on My account Menu
When I enter my email address to create an account
Then I can create a new account
And I shoud be reditected to Home Page


@regression
Scenario: a valid  error message should be displayed in case of the user is already registered
Given I am a registered user 
And I am on My account Menu
When I enter my email address to create an account
Then I shoud see an error message "An account using this email address has already been registered"


@regression
Scenario: user should not be registed if you leave without fill the  create new account fields
Given I am not a registered user 
And I am on My account Menu
Then I enter my email address to create an account
Then Create New Account Page is displayed
When I leave the page 
Then user should not be registered

@regression
Scenario: a valid  error message should be displayed in case of invalid email address
Given I am on My account Menu
When I enter an email address on create account "<email>"
Examples:
 |email         | 
 |firstname.lastname@example.com|
 |email@subdomain.example.com|
 |..%@example.com|
 |email@123.123.123.123|
 |myinvalid@@.com| 
And Create New Account Page is NOT displayed
