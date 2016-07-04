Feature: Scoreboard
	I want to have a way to increase the score of a player
	So keep track of the game, set and match score

Scenario: Player one scores a point
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	When the user gives the point to the player one
	Then the user should see the game score "Game: 15 - 0"

Scenario: Player one scores two points
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 1 point
	When the user gives the point to the player one
	Then the user should see the game score "Game: 30 - 0"

Scenario: Player one scores three points
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 2 point
	When the user gives the point to the player one
	Then the user should see the game score "Game: 40 - 0"

Scenario: Player two scores a point
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	When the user gives the point to the player two
	Then the user should see the game score "Game: 0 - 15"

Scenario: Player two scores two points
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player two has already scored 1 point
	When the user gives the point to the player two
	Then the user should see the game score "Game: 0 - 30"

Scenario: Player three scores two points
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player two has already scored 2 point
	When the user gives the point to the player two
	Then the user should see the game score "Game: 0 - 40"

Scenario: Both players score one point
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	When the user gives the point to the player one
	And the user gives the point to the player two
	Then the user should see the game score "Game: 15 - 15"

Scenario: Both players score two points
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 1 point
	And the player two has already scored 1 point
	When the user gives the point to the player one
	And the user gives the point to the player two
	Then the user should see the game score "Game: 30 - 30"

Scenario: Both players score three points - "deuce"
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 2 point
	And the player two has already scored 2 point
	When the user gives the point to the player one
	And the user gives the point to the player two
	Then the user should see the game score "Game: 40 - 40"

Scenario: Player one scores four points but player two has 3 points, player one gets the advantage
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 3 point
	And the player two has already scored 3 point
	When the user gives the point to the player one
	Then the user should see the game score "Game: adv - 40"

Scenario: Player two scores four points but player one has 3 points, player two gets the advantage
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 3 point
	And the player two has already scored 3 point
	When the user gives the point to the player two
	Then the user should see the game score "Game: 40 - adv"

Scenario: Player two scores a point when player one has the advantange, player one loose the advantage
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player two has already scored 3 point
	And the player one has already scored 4 point
	When the user gives the point to the player two
	Then the user should see the game score "Game: 40 - 40"

Scenario: Player one scores a point when player two has the advantange, player two loose the advantage
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 3 point
	And the player two has already scored 4 point
	When the user gives the point to the player one
	Then the user should see the game score "Game: 40 - 40"

Scenario: The player one scores the forth point and has a difference of two points with player two, wins a game
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 3 point
	When the user gives the point to the player one
	Then the user should see the set score "Set: 1 - 0"
	And the user should see the game score "Game: 0 - 0"

Scenario: The player two scores the forth point and has a difference of two points with player one, wins a game
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player two has already scored 3 point
	When the user gives the point to the player two
	Then the user should see the set score "Set: 0 - 1"
	And the user should see the game score "Game: 0 - 0"

Scenario: Player one scores a point having the advantage, wins a game
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player two has already scored 3 point
	And the player one has already scored 4 point
	When the user gives the point to the player one
	Then the user should see the set score "Set: 1 - 0"
	And the user should see the game score "Game: 0 - 0"

Scenario: Player two scores a point having the advantage, wins a game
	Given the user opens the tennis scoreboard home page
	And the user starts the scoreboard
	And the player one has already scored 3 point
	And the player two has already scored 4 point
	When the user gives the point to the player two
	Then the user should see the set score "Set: 0 - 1"
	And the user should see the game score "Game: 0 - 0"