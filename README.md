# alphaHealthExerciseQA 

## Requirements
* visual studio Code
* Make sure that you have intalled the cucumber plugin

## Setup
* Clone the repo

## Exercise 1 -- About scenarios for the assigment and steps responsabilities

[/automation_practice/resources/features/](/automation_practice/resources/features/)

The idea is to have a high level of bussiness requirements instad to define low level steps in each scenario, it could be very complicated to maintain. 
For other way it is easy to automate.

### Example of cucumber scenario: 
```
@smoke   ---->> tag with priority 
Scenario: register with a valid User
Given I am not a registered user 
And I am on Authentication page
When I enter my email address to create an account
Then I can create a new account
And I shoud be reditected to My account Page
```
### Responsabilities of each Step are:
```
For Given I am not a registered user 
* ensure that the user is not on the database (does not exist)
For “I am on Authentication page”
* click on "sign in" icon
* ensure that all the fields on authentication page are present
For “When I enter my email address to create an account”
* enter the email and clik on create account button
* ensure that you are redirected to create a new account page
for “Then I can create a new account”  positive step to ensure that we will create a new account
* enter all the required fileds to create an account (first_name, last_Name, address... )
* Click on Register  
```


### other example in case of purchase feature

```
For "When I follow all the steps to proceed with my checkout" 
the responsabilities for this step are: 
* I click on Proceed to Checkout
* Then Delivered Address and Invoice address are displayed 
* Then I click on Proceed to Checkout
* Then Choose a shipping option is displayed
* And Click on "I agree to the terms of service" 
* Then I click on Proceed to Checkout
```

## Exercise 2 -- Simple Execution Report

Simple execution report for @smoke and @regression test scenarios 
[alphaHealthExerciseQA/automation_practice/resources/report_example/](alphaHealthExerciseQA/automation_practice/resources/report_example/)

## Exercise 3 and 5 -- Bugs Examples. 

bugs report examples for exercises 3 and 5
[/automation_practice/resources/regression_bugs/](/automation_practice/resources/regression_bugs/)