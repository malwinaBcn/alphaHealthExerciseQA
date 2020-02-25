@login
Feature: forgot my password
 As a registered user
 I want to able to recover mu password 
 So that I can login back

@smoke
Scenario: a registred user forgot the password and recovers it
Given I am a registered user "<malwina>"
And I am on Authentication page
When I follow the steps to recover my password
#responsabilities:  
#Then I click on forgot my password
#And I enter my email
#When I click retrieve password
Then I have received an email with a new password
And I should be able to login with new password


@smoke							
Scenario: I login back with the link to recover my password
Given I have received an email with a new password
When I click on the URL 
Then I am redirected to the shopping web site
And I can login with my new password