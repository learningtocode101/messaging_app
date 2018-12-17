def send_message
  visit '/'
  fill_in :message, with: "Hello, world"
  click_button 'Send'
end
