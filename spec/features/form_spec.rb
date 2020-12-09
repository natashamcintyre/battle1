feature "Testing form" do
  scenario "has a form which when filled with a name " do
    visit('/')
    fill_in("Player1", with: "Ash")
    fill_in("Player2", with: "Misty" )
    click_button("Play!GO!")
    expect(page).to have_content("Ash vs Misty")
  end
end


# will divert to /names and display that name
