Feature: 
AS a Teacher
I want to complement my class with an online code campus
So that I can improve students learning and promote good practices

Scenario: stablish relation between online and presential course
Given I already have a presencial course
When a new class begins
Then I want to provide an online campus related to that class
And  tell my students to participate in it.

Scenario: need to see my students work
Given the course is based on weekly projects
When a new project begins
Then my students should give their solutions to that weeks project
 
Scenario: i want to encourage participation and code reviewing
Given my students gave many solutions to a single project
When project deadline's met
Then every student should have access to its peer code
And  he/she should be able to ask questions and answer them
And  do some bug report
And  provide fixes for bugs found.

Scenario: its necessary to decide who passes and who fails the course
Given I need to grade my students
When the class reaches its end
Then I should be able to collect grades for each student that represents its average performance through the course.

Scenario: Gammification of students gradings
Given I know not every student is equally interested it the class
When  someone asigns a grade to somebody else's code
Then  it should be ponderated based on the graders own performance
