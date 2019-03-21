feature 'Attacking player 2!' do
  scenario "player one attacks player two" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Dave attacked Mittens"
  end
end
