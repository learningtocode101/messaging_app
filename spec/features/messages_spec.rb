require 'app'

feature 'Messages' do
  scenario 'User can send a message' do
    send_message
    expect(page).to have_content "Hello, world"
  end

  scenario 'Has a fun gif of a bouncy ball' do
    visit '/'
    expect(page).to have_xpath("//img[@src='https://media.giphy.com/media/LpALgGQNZLzdm/giphy.gif']")
  end
end
