feature 'Player has a viewable number of HP' do
  scenario 'can enter names and submit, then view HP' do
    sign_in_and_play
    expect(page).to have_content("Lewis: #{Player::DEFAULT_HIT_POINTS}HP")
    expect(page).to have_content("Vicky: #{Player::DEFAULT_HIT_POINTS}HP")
  end
end
