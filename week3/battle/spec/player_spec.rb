describe Player do
  subject(:vicky) { Player.new('Vicky') }
  subject(:lewis) { Player.new('Lewis') }
  describe '#name' do
    it 'returns the name' do
      expect(vicky.name).to eq('Vicky')
    end
  end
  describe '#hit_points' do
    it 'returns the number of hit points' do
      expect(vicky.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end
  describe '#attack' do
    it 'damages the player' do
      expect(lewis).to receive(:take_damage)
      vicky.attack(lewis)
    end
  end
  describe '#take_damage' do
    it 'reduces the players hit points' do
      expect { lewis.take_damage }.to change { lewis.hit_points }.by(-(Player::DEFAULT_DAMAGE))
    end
  end
end
