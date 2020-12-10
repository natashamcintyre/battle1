feature Battle do
  # scenario 'Displays a confirmation message' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'see players names renders on screen' do
    sign_in_and_play
    expect(page).to have_content "Chris W"
    expect(page).to have_content "Chris A"
  end
end
