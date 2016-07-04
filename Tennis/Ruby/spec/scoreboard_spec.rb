require './lib/scoreboard'
describe Scoreboard do
	
	it 'The game stars with game score at 0 - 0' do
		sb = Scoreboard.new
		expect(sb.get_game_score).to eq "0 - 0"
	end

	it 'The game stars with set score at 0 - 0' do
		sb = Scoreboard.new
		expect(sb.get_set_score).to eq "0 - 0"
	end

	it 'The game stars with match score at 0 - 0' do
		sb = Scoreboard.new
		expect(sb.get_match_score).to eq "0 - 0"
	end

	it 'Player one scores the first point' do
		sb = Scoreboard.new
		sb.score_player_one
		expect(sb.get_game_score).to eq "15 - 0"
	end
end