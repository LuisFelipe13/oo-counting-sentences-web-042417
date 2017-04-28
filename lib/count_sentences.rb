require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    @counter = 0
    values = self.split(" ")
    values.each {|x| @counter += 1 if x[-1].end_with?(".") || x[-1].end_with?("?") || x[-1].end_with?("!")}
    @counter
  end
end
