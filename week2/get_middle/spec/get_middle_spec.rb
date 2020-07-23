require 'get_middle'
describe 'get_middle' do
  it 'returns the middle letter' do
    subject = Class.new
    expect(subject.get_middle("bug")).to eq("u")
  end

  
end
