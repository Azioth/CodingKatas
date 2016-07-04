class Scoreboard
	def initialize
		@player_one_game_score = 0
		@player_one_set_score = 0
		@player_one_match_score = 0
		@player_two_game_score = 0
		@player_two_set_score = 0
		@player_two_match_score = 0

		@set_score = "0 - 0"
		@match_score = "0 - 0"
	end

	def get_game_score
		@game_score = get_player_one_game_score + " - " + get_player_two_game_score
		@game_score
	end

	def get_player_one_game_score
		if @player_one_game_score == 0
			return "0"
		elsif @player_one_game_score == 1
			return "15"
		elsif @player_one_game_score == 2
			return "30"
		elsif @player_one_game_score == 3	
			return "40"
		elsif @player_one_game_score == 4		
			return "adv"
		end
	end

	def get_player_two_game_score
		if @player_two_game_score == 0
			return "0"
		elsif @player_two_game_score == 1
			return "15"
		elsif @player_two_game_score == 2
			return "30"
		elsif @player_two_game_score == 3		
			return "40"
		elsif @player_two_game_score == 4		
			return "adv"
		end
	end

	def get_set_score
		@set_score
	end

	def get_match_score
		@match_score
	end

	def score_player_one
		@player_one_game_score+=1
	end
end