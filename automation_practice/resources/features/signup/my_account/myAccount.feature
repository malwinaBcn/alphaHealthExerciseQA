@myAccount
Feature: my account feature
 As a free user
 I want to register on my site
 So that I can enjoy my online shop site

 @smoke
Scenario: verify valid information on mandatory fields 
Given I am not a registered user 
And I am on Authentication page
When I enter my email address to create an account
Then test case

Examples:
 |name        | surname | address |tel |blabla bla|
 |firstname.lastname@example.com|
 |email@subdomain.example.com|
 |..%@example.com|
 |email@123.123.123.123|
 |myinvalid@@.com| 