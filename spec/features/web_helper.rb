def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: "Chris W"
  fill_in 'player_2', with: "Chris A"
  click_button "Submit"
end
