Feature: grade student
As a Professor
I want to grade students based on submited code
So that I can determine who's this week "winner"
 
#Acceptance Criteria: (presented as Scenarios)
 
Scenario: Submited code is still private
Given I'm in my home page
  And the class project already started
When  Students submit code
Then  Only me and my assistants can see the code 

Scenario: 
Given Only I can see everyones code
  And Student already started the project
When  Students flags it as finished
Then  a message should arrive to me and my assistants updates page
  And a proposed grade based on finishing time should be presented


Scenario: Studen flags code as finished
Given Deadline not met yet
And   Code is still private
When  Me and my assistants recieve a notification message
Then  A link should lead me to the submited code page
And   A grading field based on quality should be enabled.

Scenario: Estipulated deadline met
Given not all the students finished their project
When  deadline hour for this project arrives
Then  all projects get closed 
And   no other submition is allowed

Scenario: First stage completed
Given Deadline was met
When  Projects get closed for submitions
Then  all projects became public for peer review

Scenario: Peer Review enabled
Given Every student can see its classmates code
When  one students grades somebody else's code
Then  ponderated grade is calculated based on the grader category. 
	#Contribution on open questions, comments made graded positive (more on this later), grader average score, etc.

#TODO obliged peer grading

Scenario: Peer grade submitted
Given Student graded peer's code
When grade is ready to be public
Then grader can add comments in Justification textBox

Scenario: Peer graded Peer
Given A peer grade was made public
When  the submitter confirms it
Then  Justification may be asked by code owner
And   Grader and Professor should be notified

Scenario: Discussion deadline met
Given Grading deadline is met 
When  I awant to have an average score of a particular Solution
Then  Ponderate average is calculated

Scenario: Ponderated average calculation
Given I want to see the "total average" of a student
When grades by status were calculated for each Solution
Then the number of bugs found, number of fixes and comments AS should be ponderated too

Scenario: project winner
Given All grades were calculated
When I asks for project top 3 students
Then Top 3 should be exposed with gold, silver and bronze medals

Scenario: Project is closed
Given a winner was proclaimed 
When a new project has started or course completed
Then comments on previous code is enabled
And  code editing is disabled





