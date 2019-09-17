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
    count = []
    count << self.split(/[!+\b]|[?+\b]|[.+\b]/)
    new_count = count.flatten
    new_count -= [nil, ""]
    new_count.length 
  end
end