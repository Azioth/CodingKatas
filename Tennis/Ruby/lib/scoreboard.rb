class Scoreboard
	def initialize
		@player_one_game_score = 0
		@player_one_set_score = 0
		@player_one_match_score = 0
		@player_two_game_score = 0
		@player_two_set_score = 0
		@player_two_match_score = 0
		@game_score = "0 - 0"
		@set_score = "0 - 0"
		@match_score = "0 - 0"
		@game_over = false
	end

	def get_game_score
		@game_score
	end

	def set_game_score
		@game_score = get_player_one_game_score + " - " + get_player_two_game_score
	end

	def get_set_score
		@set_score
	end

	def set_set_score
		@set_score = "#{@player_one_set_score} - #{@player_two_set_score}"
	end

	def get_match_score
		@match_score
	end

	def set_match_score
		@match_score = "#{@player_one_match_score} - #{@player_two_match_score}"
	end

	def game_over
		@game_over = true
	end

	def get_player_one_game_score
		return get_tennis_points(@player_one_game_score)
	end

	def get_player_two_game_score
		return get_tennis_points(@player_two_game_score)
	end

	def get_tennis_points(point)
		case point
		when 0
			return "0"
		when 1
			return "15"
		when 2
			return "30"
		when 3		
			return "40"
		when 4		
			return "adv"
		end
	end

	def score_player_one
		if (@player_one_game_score == 3 && @player_two_game_score < 3) || @player_one_game_score == 4
			score_set_player_one
		elsif @player_one_game_score == 3 && @player_two_game_score > 3
			@player_two_game_score-=1
		else
			@player_one_game_score+=1
		end
		set_game_score
	end

	def score_player_two
		if (@player_two_game_score == 3 && @player_one_game_score < 3) || @player_two_game_score == 4
			score_set_player_two
		elsif @player_two_game_score == 3 && @player_one_game_score > 3
			@player_one_game_score-=1
		else
			@player_two_game_score+=1
		end
		set_game_score
	end

	def score_set_player_one
		if (@player_one_set_score == 5 && @player_two_set_score <= 4)
			score_match_player_one
		else
			@player_one_set_score+=1
		end
		@player_one_game_score = 0
		@player_two_game_score = 0
		set_set_score
	end

	def score_set_player_two
		if (@player_two_set_score == 5 && @player_one_set_score <= 4)
			score_match_player_two
		else
			@player_two_set_score+=1
		end
		@player_one_game_score = 0
		@player_two_game_score = 0
		set_set_score
	end

	def score_match_player_one
		@player_one_match_score+=1
		if @player_one_match_score == 3
			game_over
			player_one_winner
		end
		@player_one_set_score = 0
		@player_two_set_score = 0
		set_match_score
	end

	def score_match_player_two
		@player_two_match_score+=1
		if @player_two_match_score == 3
			game_over
			player_two_winner
		end
		@player_one_set_score = 0
		@player_two_set_score = 0
		set_match_score
	end

	def is_game_over
		@game_over
	end

	def get_winner
		@winner
	end

	def player_one_winner
		@winner = "Player One"
	end

	def player_two_winner
		@winner = "Player Two"
	end
end