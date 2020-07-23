feature 'Player name feature' do
  scenario 'can enter names and see them on the page' do
    sign_in_and_play
    expect(page).to have_content('Vicky vs. Lewis')
  end
end
