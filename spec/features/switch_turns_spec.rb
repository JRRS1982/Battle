feature 'Switch turns' do
  context 'see current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end



    scenario 'expect player b to have a turn' do
      sign_in_and_play
      click_button 'Attttack!!'
      click_button 'Play Again!'
      expect(page).not_to have_content "Dave's turn"
      expect(page).to have_content "Mittens's turn"
    end
  end
end 
