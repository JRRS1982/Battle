feature 'View hitpoints' do
  scenario 'expect player b to have default hp' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60hp'
  end
end 
