class Scrabble
  LETTERVALUES = {  'AEIOULNRST' => 1,
                  'DG' => 2,
                  'BCMP' => 3,
                  'FHVWY' => 4,
                  'K' => 5,
                  'JX' => 8,
                  'QZ' => 10, }
                  
  def initialize(word)
    @word = validate_word(word)
    @score = 0
  end

  def score
     @word.chars.map do |letter| 
      LETTERVALUES.find { |key, _| key.include?(letter)}.last
    end.sum
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private
  def validate_word(word)
    return '' unless word.is_a?(String)
    word.strip.upcase
  end
end


