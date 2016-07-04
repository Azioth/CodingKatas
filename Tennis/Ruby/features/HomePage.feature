Feature: Home Page
	I want to have a welcome page
	So I can decide when to start the tennis scoreboard

Scenario: User enter the tennis scoreboard home page
	When the user opens the tennis scoreboard home page
	Then the user should see the welcoming message: "Welcome to the next-gen Tennis Scoreboard!"
	And the user should see the button to start the scoreboard: "Start Scoreboard"

Scenario: User starts the Scoreboard
	Given the user opens the tennis scoreboard home page
	When the user starts the scoreboard
	Then the user should see the game score "Game: 0 - 0"
	And the user should see the set score "Set: 0 - 0"
	And the user should see the match score "Match: 0 - 0"