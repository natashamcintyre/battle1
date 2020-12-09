describe Battle do
  it "has content on homepage" do
    expect('/').to have_content?("Testing infrastructure working!")
  end
end
