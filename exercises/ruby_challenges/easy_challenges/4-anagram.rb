class Anagram
  attr_reader :word
  def initialize(word)
    @word = word.downcase
  end

  def match(array)
    array.select! { |candidate| anagram?(candidate) }
  end

  def anagram?(candidate)
    return false if candidate.downcase == @word
    word = @word.chars.sort.join
    candidate = candidate.downcase.chars.sort.join
    word == candidate
  end
end

