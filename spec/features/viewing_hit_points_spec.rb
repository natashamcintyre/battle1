feature Battle do
    
   scenario 'wants to see Player 2s hit points' do
     visit('/')
     fill_in 'player_1', with: "Chris W"
     fill_in 'player_2', with: "Chris A"
     click_button "Submit"
     expect(page).to have_content 'Hit Points'
   end


end