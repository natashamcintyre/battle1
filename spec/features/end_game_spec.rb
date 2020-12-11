feature "ending the game" do
  scenario "losing" do
    sign_in_and_play
    11.times { click_button "Attack" }
    expect(page).to have_content "Chris W wins!"
  end
end
