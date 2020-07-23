feature 'Player has a viewable number of HP' do
  scenario 'can enter names and submit, then view HP' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content('Vicky attacked Lewis')
  end
end
