Feature: Guest wants to enroll in a class 
As a guest in www.cloudcodecampus.com
I want to enroll in a class
so I can submit my excellent solution to one of its projects

# Should we avoid calling the home page like that? Maybe "dashboard", "desktop", "news", because "home page" is very usability oriented.

Scenario: Guests first view
Given Im a guest
When I enter the home page
Then I should see public groups and its projects

Scenario: Guest found interesting project
Given Im on a project page
When I try to submit solution
Then I should be redirected to User SignUp or Login

Scenario: Guest is logged as User
Given I submited my solution
When I go back to home page
Then I should see my upload as news
And  the project I submited to as "Following Projects"
And  also should see "closed" groups with "public" projects

Scenario: I'm logged as User 
Given I'm in my home page
When I try to open a closed group's public project
Then I'm redirected to groups home page
And  a "join group" button is available

Scenario: I'm logged as user
Given I'm in my home page
When A class professor or assistant invites me
Then I should see a request to join 
And  all the private's group requirements # ie, Algorithms I before Advance Graphs Search Algorithms

