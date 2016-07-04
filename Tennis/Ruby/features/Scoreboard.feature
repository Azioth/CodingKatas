Feature: Scoreboard
	I want to have a way to increase the score of a player
	So keep track of the game, set and match score

Scenario: User gives the point to the player one
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	When the user gives the point to "player one"
	Then the user should see the game score "Game: 15 - 0"