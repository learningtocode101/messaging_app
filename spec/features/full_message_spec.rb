feature 'Full message' do
  scenario 'Displays the full message' do
    send_message
    click_link('1')
    expect(page).to have_content "Hello, world. This is a test message. Banana"
  end

  scenario 'Only displays message clicked' do
    send_message
    fill_in :message, with: "Minions are yellow and ugly"
    click_button 'Send'
    click_link('1')
    expect(page).not_to have_content "Minions are yellow and ugly"
  end
end
