Title: User wants to teach 
 
Feature:
As a User
I want to create a class about a certain subject
So that I can distribute my knowledge
 

Scenario: User can create a class
Given I am at home page
When  I click on "new group"
Then  the app should redirect to the group config view
And   I should become Admin in this group

#Trivial?
Scenario: Admin configures the class
Given User is at the Group config view
When  User sets the subject "New Technologies Class"
Then  a message should show similar classes like "New Technologies"

Scenario: I want to add my friend as Super User
Given I'm at group config view 
When  I click on "Invite" 
Then  A window should appear with SuperUser and Member fields
And   should be able to manage new users in each field.

Scenario: I want to block unexperienced users from joining
Given I'm at group config view
When  I click on "Correlatives"
Then  I should see all groups
And   be able to search by name and description

#Trivial?
Scenario: I want lots of contributions in my group and its projects
Given I'm at group config view
When  I clock on "Privacy"
Then  I should be able to select "Private group"

#Trivial?
Scenario: I want some privacy in my group and its projects
Given I'm at group config view
When  I clock on "Privacy"
Then  I should be able to select "public group"


Scenario: User uploads the group
Given User has already configured the group
When  User clicks the 'create group' button
Then  the app should redirect to the new group view
 And  I should be enbabled to accept calls members




____________________________________________________


Feature: Guest wants to enroll in a class 
As a guest in www.cloudcodecampus.com
I want to enroll in a class
so I can submit my excellent solution to one of its projects


Scenario: Guests first view
Given Im a guest
When I enter the home page
Then I should see a list with public projects and  on click, its submitions

Scenario: Guest found interesting project
Given Im on a project page
When I click on "Submit solution"
Then I should be redirect to User SignUp or Login

Scenario: 





































