class NoteBook
  attr_reader :notes

  def initialize
    @notes = []
  end

  def keep(note)
    @notes << note
  end

  def search(tag)
    @notes.map { |note|
      if note.tag == tag
        note  }

  end
end
