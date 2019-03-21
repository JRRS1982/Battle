feature 'View hitpoints' do
  scenario 'expect player b to have 100hp' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100hp'
  end
end