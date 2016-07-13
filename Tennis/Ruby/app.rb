require 'sinatra'
require './lib/scoreboard'

class Score
	@@scoreboard

	def self.init()
		@@scoreboard = Scoreboard.new
	end

	def self.game_score()
		return @@scoreboard.get_game_score
	end

	def self.set_score()
		return @@scoreboard.get_set_score
	end

	def self.match_score()
		return @@scoreboard.get_match_score
	end

	def self.score_player_one()
		@@scoreboard.score_player_one
	end

	def self.score_player_two()
		@@scoreboard.score_player_two
	end

	def self.is_game_over()
		@@scoreboard.is_game_over
	end

	def self.get_winner()
		@@scoreboard.get_winner		
	end
end

get '/' do
	erb :index
end

get '/scoreboard' do
	Score::init()
	@game_score = Score::game_score()
	@set_score = Score::set_score()
	@match_score = Score::match_score()
	erb :scoreboard
end

post '/scoreboard' do
	if params['player'] == 'player_one'
		Score::score_player_one()
	elsif params['player'] == 'player_two'
		Score::score_player_two()
	end
	if Score::is_game_over() == true
		@winner =Score::get_winner()
		@match_score =Score::match_score()
		erb :gameover
	else
		@game_score = Score::game_score()
		@set_score = Score::set_score()
		@match_score =Score::match_score()
		erb :scoreboard
	end
end