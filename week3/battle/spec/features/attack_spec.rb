feature 'attack an opponent' do
  subject(:vicky) { Player.new('Vicky') }
  subject(:lewis) { Player.new('Lewis') }
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack!'
    expect{lewis.take_damage}.to change {lewis.hit_points}.by(-Player::DEFAULT_DAMAGE)
  end
end
