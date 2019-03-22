feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attttack!!'
    click_button 'Play Again!'
    expect(page).not_to have_content 'Mittens: 60hp'
    expect(page).to have_content 'Mittens: 50hp'
  end
end
