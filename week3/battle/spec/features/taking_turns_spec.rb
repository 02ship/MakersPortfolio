
feature 'players can take turns attacking each other' do
  scenario 'player 1 attacks player 2 current turn switches' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content("Lewis's turn")
  end
end
