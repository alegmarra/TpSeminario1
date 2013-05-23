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

# La idea era poner los campos mínimos que podrían ir en una clase
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
Given Im
 And  User sets the correlatives
 And  User sets privacy level # Would be nicer "publicy level", more friendly and open styled
 And  User sets duration
 And  User sets start date
 And  User sets tags
 And  User sets #whatever
Then  the class is configured

Scenario: User creates a class
Given User has already configured the class
When  User clicks the 'create class' button
Then  the class is created
 And  the app should redirect to the new class view #Where he is a Professor and can send invitations?


