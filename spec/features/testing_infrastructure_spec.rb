require 'app'

feature 'The Homepage' do
  scenario 'It says Bounce' do
    visit '/'
    expect(page).to have_content 'Bounce'
  end
end
