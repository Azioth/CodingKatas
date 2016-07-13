Given(/^the player one has already scored (\d+) point$/) do |points|
  	points.to_i.times do 
  		click_button("p1-point-btn")
  	end
end

Given(/^the player two has already scored (\d+) point$/) do |points|
  points.to_i.times do 
      click_button("p2-point-btn")
    end
end

Given(/^the player one has already won (\d+) games$/) do |games|           
  games.to_i.times do
    4.times do
      click_button("p1-point-btn")
    end
  end
end                                                                       
                                                                          
Given(/^the player two has already won (\d+) games$/) do |games|           
  games.to_i.times do
    4.times do
      click_button("p2-point-btn")
    end
  end
end                                                                       

Given(/^the player one has already won (\d+) sets$/) do |sets|
  sets.to_i.times do
    6.times do
      4.times do
        click_button("p1-point-btn") 
      end
    end
  end
end

When(/^the user opens the tennis scoreboard home page$/) do
	visit '/'
end

When(/^the user starts the scoreboard$/) do
	click_button("start-scoreboard-btn")
end

When(/^the user gives the point to the player one$/) do
	click_button("p1-point-btn")
end

When(/^the user gives the point to the player two$/) do
  	click_button("p2-point-btn")
end

Then(/^the user should see the welcoming message: "([^"]*)"$/) do |welcome_message|
	expect(last_response.body).to match(/#{welcome_message}/m)
end

Then(/^the user should see the button to start the scoreboard: "([^"]*)"$/) do |start_button_name|
  	expect(last_response.body).to match(/#{start_button_name}/m)
end

Then(/^the user should see the game score "([^"]*)"$/) do |game_score|
	expect(last_response.body).to match(/#{game_score}/m)
end

Then(/^the user should see the set score "([^"]*)"$/) do |set_score|
  expect(last_response.body).to match(/#{set_score}/m)
end

Then(/^the user should see the match score "([^"]*)"$/) do |match_score|
  expect(last_response.body).to match(/#{match_score}/m)
end

Then(/^the user should see the message "(.*?)"$/) do |message|
  expect(last_response.body).to match(/#{message}/m)
end

Then(/^the user should see the final score message "(.*?)"$/) do |final_score|
  expect(last_response.body).to match(/#{final_score}/m)
end