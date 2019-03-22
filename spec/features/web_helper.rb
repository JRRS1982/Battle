def sign_in_and_play
  visit('/')
  fill_in 'p1name', with: 'Dave'
  fill_in 'p2name', with: 'Mittens'
  click_button 'Submit'
end
