feature Battle do
  # scenario 'Displays a confirmation message' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'see players names renders on screen' do
    visit '/'
    fill_in 'player_1', with: "Chris W"
    fill_in 'player_2', with: "Chris A"
    click_button "Submit"
    expect(page).to have_content "Chris W"
    expect(page).to have_content "Chris A"
  end
end
