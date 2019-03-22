feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attttack!!'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens has 50 HP'
  end
end
