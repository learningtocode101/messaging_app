require 'app'

feature 'Messages' do
  scenario 'User can send a message' do
    sign_in
    fill_in :message, with: "Hello, world"
    click_button 'Send'
    expect(page).to have_content "Hello, world"
  end

  scenario 'Has a fun gif of a bouncy ball' do
    sign_in
    expect(page).to have_xpath("//img[@src='https://media.giphy.com/media/LpALgGQNZLzdm/giphy.gif']")
  end
end
