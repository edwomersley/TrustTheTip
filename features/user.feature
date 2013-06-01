Feature: User create new list and view other users lists

As a user
I want to give and recieve expert advice from the community

Scenario: A user creates a new list
Given I am on the home index page
When I click on the create a new list button
Then I should visit the users new page

Scenario: A user creates a new list
Given I am on the users new page
When I click the submit button
Then the should be redirected to the users index page

# A user creates a new list and describe what happens