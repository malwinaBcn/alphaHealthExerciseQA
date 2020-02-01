@purchace
Feature: purchace flow featur
 As a registered user
 I want to purchase my selected item
 So that I can enjoy my purchases


@smoke
Scenario: basic purchase flow for an item
Given I am a registered user "<malwina>"
And I logged in to my online shop
And I have a selected item on my cart
Then I click on cart icon
Then I shoud see the summary of my selected item
When I follow all the steps to proceed with my checkout
// I click on Proceed to Checkout
//Then Delivered Address and Invoice address are displayed 
//Then I click on Proceed to Checkout
//Then Choose a shipping option is displayed
//And Click on "I agree to the terms of service" 
//Then I click on Proceed to Checkout
And I pay with my favorite payment method "<bank wire>"
// click on bank wire icon
//Then Click on "I confirm my order"
// And I Click on Confirm my order
Then Order Confirmation Should be present

