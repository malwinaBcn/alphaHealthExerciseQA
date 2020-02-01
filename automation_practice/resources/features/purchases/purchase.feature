@purchace
Feature: purchace flow featur
 As a registered user
 I want to purchase my selected item
 So that I can enjoy my purchases


@smoke
Scenario: basic purchase flow for an item with a logged user in ti the web site
Given I am a registered user "<malwina>"
And I logged in to my online shop
And I have a selected item on my cart
Then I click on cart icon
Then I shoud see the summary of my selected item
When I follow all the steps to proceed with my checkout
And I pay with my favorite payment method "<bank wire>"
Then Order Confirmation Should be present
And my Cart is empty

@regression
Scenario: basic purchase flow for an item 
Given I am not a registered user 
And I have a selected item on my cart
Then I click on cart icon
Then I shoud see the summary of my selected item
Then I click on Proceed to checkout button
Then I shound be reditected to authentication page
When I create my New Account
Then Then Delivered Address and Invoice address are displayed
And I follow all the steps to proceed with my checkout
And I pay with my favorite payment method "<bank wire>"
Then Order Confirmation Should be present
And my Cart is empty
