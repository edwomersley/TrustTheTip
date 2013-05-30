Feature: User create new list and view other users lists

As a user
I want to give and recieve expert advice from the community

Scenario: A user is signed in with valid information
Given I am on the home index page
When I click on the create a new list button
Then I should be able to create a new list

Scenario: A user is signed in with valid information
Given I am on the home index page
When I click on the view my lists button
Then I should be able to view my lists