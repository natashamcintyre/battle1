
feature "Testing infrastructure" do
  scenario "has content on homepage" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end

end
