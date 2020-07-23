class SecretDiary
  attr_reader :lockstatus
  def initialize
    @entries = []
    @lockstatus = "locked"
  end
  def lock
    @lockstatus = "locked"
  end
  def unlock
    @lockstatus = "unlocked"
  end
  def add_entry(entry)
    raise "Diary locked" unless @lockstatus == "unlocked"
      @entries << entry
  end
  def get_entries
    raise "Diary locked" unless @lockstatus == "unlocked"
      @entries.join("\n")
  end
end
