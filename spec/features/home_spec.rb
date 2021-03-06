feature 'Homepage' do
  scenario 'It says Bounce' do
    visit '/'
    expect(page).to have_content 'Welcome to Bounce'
  end

  scenario 'User can send a message' do
    send_message
    expect(page).to have_content 'Hello, world'
  end

  scenario 'Has a fun gif on page' do
    visit '/'
    expect(page).to have_xpath("//img[@src='https://media.giphy.com/media/LpALgGQNZLzdm/giphy.gif']")
  end

  scenario 'Shows history of all messages sent this session' do
    send_message
    fill_in :message, with: 'Hello, again!'
    click_button 'Send'
    expect(page).to have_content 'Hello, world'
    expect(page).to have_content 'Hello, again!'
  end

  scenario 'displayed message has a time stamp' do
    send_message
    expect(page).to have_content(Message.new.created_at)
  end

  scenario 'displays only 20 first characters of a message' do
    send_message
    expect(page).not_to have_content 'message. Banana'
  end
end
