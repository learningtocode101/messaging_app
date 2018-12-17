require 'app'

feature 'Sign in' do
  scenario 'Allows millenial to sign in' do
    sign_in
    expect(page).to have_content "Rednblack99"
  end
end
