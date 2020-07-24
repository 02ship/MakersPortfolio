def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'Vicky')
  fill_in('player_2_name', with: 'Lewis')
  click_button('Submit')
  expect(page).to have_content('Vicky vs. Lewis')
end

def attack_and_confirm
  click_link('Attack!')
  click_button('OK')
end
