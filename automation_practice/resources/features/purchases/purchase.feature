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


@smoke
Scenario: Credit card invalid
Given I am a logged user "<malwina>"
And I want to pay for the items in my cart 
And I pay with my favorite payment method "<credit card>"
When I enter an invalid card number "invalid_number"
And all the other details are correct 
Then I should see an error_message "error_message"
And I should not be permited to finish my purchase
Examples:
|invalid_number| error_message|
 |5554455454545| too short|
 |4000000000000259| invalid frauded|

@regression
Scenario: The user wants to continue shopping 
Given I am a logged user "<malwina>" on the payment page
And I have chosen some items to buy 
And  I want to continue shopping
When I push on the button "<continue shopping>"
Then I should be redirected to the main page 
And my cart should contain my selected items


@regression
Scenario: The user wants to clear the cart
Given I have chosen "items_number" items to buy 
And  I want to clear the cart 
When I push on the button "<clear>"
Then my cart should be empty