Title: User wants to teach 
 
Feature:
As a User
I want to create a class about a certain subject
So that I can distribute my knowledge
 

Scenario: User can create a class
Given User is at home page
When  clicks on "new group"
Then  the app should redirect to the "group" config view

# Este escenario debería ser ascendido a User Story?
# La idea era poner los campos mínimos que podrían ir en una clase
Scenario: User configures the class
Given User is at the class config view
When  User sets the subject
Then  the class' subject is set
 And  a message should show similar classes
When  User sets the class collaborators
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

