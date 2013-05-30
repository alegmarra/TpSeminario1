Feature:
As a User
I want to share trivias and solutions with others
So we can learn and compete as a community

Scenario: get feedback from my solution
Given I submit a new community project  and my solution
When others see my uploads
Then i wanhwt to receive feedback about errors, bugs and fixes
And  discuss throught comments or posts
And  see others posible solutions for that project

Scenario: how good is my solution?
Given I submitted my solution on a community project 
When Someone wants to compare how good is my solution compared to others
Then They should be able to vote wich one is better
And  the most voted should be elected as best solution.

Scenario: Identify serious Users 
Given Not everyone contributes the same quality and amount to the community
When someone votes or comments
Then submition from Users who contribute the most and with grater quality should be taken more seriously 
