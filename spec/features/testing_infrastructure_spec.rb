
feature "Testing infrastructure" do
  scenario "has content on homepage" do
    visit('/')
    expect(page).to have_button
  end

end
