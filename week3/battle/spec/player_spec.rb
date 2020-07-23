describe Player do
  it 'has a name' do
    subject(:paul) { Player.new('Paul') }
    expect(paul.name).to eq('Paul')
  end
end
