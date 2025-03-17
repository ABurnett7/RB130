# A DNA class to compare mutations between two strands of DNA

class DNA
  def initialize(strand)
    @strand = strand
  end

  # Algorithm given
  def hamming_distance(other_strand)
    short_strand, long_strand = [strand, other_strand].sort_by(&:length) # overkill on reassignment
    differences = 0
    
    short_strand.size.times do |index|
      differences += 1 if short_strand[index] != long_strand[index]
    end
    differences
  end


  # What I would've done
  # def hamming_distance(other_strand)
  #   short_strand, long_strand = [strand, other_strand].sort_by(&:length)
  #   short_strand.chars.zip(long_strand.chars).count { |a, b| a != b }
  # end

  private
  attr_reader :strand
end
