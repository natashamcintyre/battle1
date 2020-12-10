feature "attacking player 2" do
  scenario "attach player 2 and see confirmation" do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content "Chris W attacked Chris A"
  end
end
