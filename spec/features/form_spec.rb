feature "Testing form" do
  scenario "has a form which when filled with a name " do
    visit('/')
    fill_in("Player 1", with: "Ash")
    click_button("Play!Go!")
    expect(page).to have_content("Ash")
  end
end


# will divert to /names and display that name
