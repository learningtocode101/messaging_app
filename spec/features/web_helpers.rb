def sign_in
  visit ('/')
  fill_in :username, with: "Rednblack99"
  click_button "Sign In"
end
