Feature:
As a User
I want to create a class about a certain subject
So that I can distribute my knowledge
 

Scenario: Create new class
Given I just logged in as User
When  I crate a new group
Then  I should become Admin of this group
And   be able to configure all its properties

Scenario: Admin configures the class
Given I have to name the group 
When  I name the group with "New Technologies Class - Part II"
Then  I should be informed of similar classes like "New Technologies 101"

#Trivial
Scenario: Admin adds SuperUsers
Given I need a collaborator
When  I invite another user to join 
Then  I should select to invite him as SuperUser or Member


Scenario: Block unexperienced users from joining
Given I want to set a minimun knowledge basis for this group
When  I decide wich correlatives are required
Then  I should be informed of all other groups.be able to search by name and description
And   add those selected as required for a User to Join.


Scenario: Setting up visibility and contribution policies
Given I want lots of Members in my group 
When  I set my privacy level to "Public"
Then  My group should be discoverable by any User 
And   allow Users to Join when they meet the requirements

Scenario: Enable joinings and uploads
Given I have already configured the group
When I upload it 
Then  the app should redirect to the new group view
 And  I should be enbabled to accept calls members
