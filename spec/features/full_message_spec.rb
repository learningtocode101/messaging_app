feature 'Full message' do
  scenario 'Displays the full message when preview is selected' do
    send_message
    click_link
    expect(page).to have_content 'Hello, world. This is a test message. Banana'
  end

end
