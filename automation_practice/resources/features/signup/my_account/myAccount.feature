@myAccount
Feature: my account feature
 As a free user
 I want to register on my site
 So that I can enjoy my online shop site

 @smoke
Scenario: verify valid user on my accouunt
Given I am not a registered user 
And I am on Authentication page
When I enter my email address to create an account
Then test case