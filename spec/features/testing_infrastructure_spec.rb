feature Battle do
  scenario 'Displays a confirmation message' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
