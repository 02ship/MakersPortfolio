require 'secret_diary'
describe SecretDiary do
  it "keeps entries secret" do
    expect {subject.get_entries}.to raise_error "Diary locked"
  end
  describe '#unlock' do
    it 'unlocks the SecretDiary' do
      subject.unlock
      expect(subject.lockstatus).to eq("unlocked")
    end
  describe '#lock' do
    it 'locks the SecretDiary' do
      subject.lock
      expect(subject.lockstatus).to eq("locked")
    end
  end
  end
  describe '#add_entry(entry)' do
    it 'adds entries when the diary is unlocked' do
      subject.unlock
      entry = "First commit"
      expect(subject.add_entry(entry)).to eq([entry])
    end
  end
  describe '#get_entries'
    it "prints entries when SecretDiary is unlocked" do
      subject.unlock
      entry = "First commit"
      subject.add_entry(entry)
      expect(subject.get_entries).to eq(entry)
  end
end
