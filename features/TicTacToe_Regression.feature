Feature: Regression Testing for Tic Tac Toe application

#An alternative here would be to replace to board every
#time play is pressed
Scenario: Disable Play Button After Board Create
Given I navigate to the tic tac toe page
When I enter 3 into the number field
And I click the Play button
And I click the Play button
Then I see a Tic Tac Toe board of height and width 3

#Some other assorted scenarios outside of the most common
#happy paths
Scenario: 5x5 X Wins

Scenario: 7x7 O Wins

Scenario: Non-Number Inputs in Number Field
