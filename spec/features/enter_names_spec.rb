feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature 'Names correct?' do
  scenario 'p1 has right name' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end