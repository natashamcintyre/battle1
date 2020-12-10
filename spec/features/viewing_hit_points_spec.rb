feature Battle do

   scenario 'wants to see Player 2s hit points' do
     sign_in_and_play
     expect(page).to have_content 'Hit Points'
   end


end
