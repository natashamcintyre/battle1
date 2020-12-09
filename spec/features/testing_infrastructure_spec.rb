# require "app.rb"

describe Battle do
  it "has content on homepage" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end
