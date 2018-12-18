feature 'Full message' do
  scenario 'Displays the full message' do
    send_message
    click_link('name')
    expect(page).to have_content "Hello, world. This is a test message. Banana"
  end
end