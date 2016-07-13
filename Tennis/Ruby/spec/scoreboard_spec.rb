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

	it 'Player two scores the first point' do
		sb = Scoreboard.new
		sb.score_player_two
		expect(sb.get_game_score).to eq "0 - 15"
	end

	it 'Player one wins a set when leads by two points' do
		sb = Scoreboard.new
		4.times do
			sb.score_player_one
		end
		expect(sb.get_set_score).to eq "1 - 0"
	end

	it 'Player two wins a set when leads by two points' do
		sb = Scoreboard.new
		4.times do
			sb.score_player_two
		end
		expect(sb.get_set_score).to eq "0 - 1"
	end

	it 'Game score is set to 0-0 when a set is won' do
		sb = Scoreboard.new
		4.times do
			sb.score_player_one
		end
		expect(sb.get_game_score).to eq "0 - 0"
	end

	it 'Player one get advantage if both player are tied in 40' do
		sb = Scoreboard.new
		3.times do
			sb.score_player_one
		end
		3.times do
			sb.score_player_two
		end
		sb.score_player_one
		expect(sb.get_game_score).to eq "adv - 40"
	end

	it 'Player two get advantage if both player are tied in 40' do
		sb = Scoreboard.new
		3.times do
			sb.score_player_one
		end
		3.times do
			sb.score_player_two
		end
		sb.score_player_two
		expect(sb.get_game_score).to eq "40 - adv"
	end

	it 'Player one dont win a set when score 4 points but does not leads by two points' do
		sb = Scoreboard.new
		3.times do
			sb.score_player_one
		end
		3.times do
			sb.score_player_two
		end
		sb.score_player_one
		expect(sb.get_set_score).to eq "0 - 0"
	end

	it 'Player two dont win a set when score 4 points but does not leads by two points' do
		sb = Scoreboard.new
		3.times do
			sb.score_player_one
		end
		3.times do
			sb.score_player_two
		end
		sb.score_player_two
		expect(sb.get_set_score).to eq "0 - 0"
	end

	it 'Player one wins its six game while leading the set by two points and wins a game point' do
		sb = Scoreboard.new
		5.times do
			sb.score_set_player_one
		end
		4.times do
			sb.score_set_player_two
		end
		4.times do
			sb.score_player_one
		end
		expect(sb.get_match_score).to eq "1 - 0"
	end

	it 'Player two wins its six game while leading the set by two points and wins a game point' do
		sb = Scoreboard.new
		5.times do
			sb.score_set_player_two
		end
		4.times do
			sb.score_set_player_one
		end
		4.times do
			sb.score_player_two
		end
		expect(sb.get_match_score).to eq "0 - 1"
	end
end