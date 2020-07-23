class TextNote
  attr_reader :tag, :text

  def initialize
    @text = gets.chomp
  end

  def add_tag(tag)
    @tag = tag
  end
end
