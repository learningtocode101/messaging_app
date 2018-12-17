require 'app'

feature 'The Homepage' do
  scenario 'Says Bounce' do
    visit '/'
    expect(page).to have_content 'Bounce'
  end
end
