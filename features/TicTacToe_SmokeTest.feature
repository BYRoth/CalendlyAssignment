Feature: Smoke Testing for Tic Tac Toe application

#Basic test scenario to make sure that boards are created
#with the correct number of spaces
Scenario: Board Create
Given I navigate to the tic tac toe page
When I enter 5 into the number field
And I click the Play button
Then I see a Tic Tac Toe board of height and width 5

#Just verifying here that X and O are alternating
Scenario: X and O Alternate

#Test case to verify the accuracy of the winner message
Scenario: 3x3 X Wins
Given I navigate to the tic tac toe page
When I enter 3 into the number field
And I click the Play button
And I click the space on row: 0 and column: 0
And I click the space on row: 0 and column: 1
And I click the space on row: 1 and column: 0
And I click the space on row: 1 and column: 1
And I click the space on row: 2 and column: 0
Then I see that player "X" is declared the winner

#Noted that there was a bug for both winner messages
#The test would be similar to above
Scenario: 3x3 O Wins

#Verifying no message when the game is a draw
Scenario: 3x3 Draw
