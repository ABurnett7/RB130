class Diamond

  def self.make_diamond(letter)
    letters = ("A"..letter).to_a
    inner = (1..(letters.size-1)*2).step(2).to_a.prepend(0)
    outer = (letters.size-1).downto(0).to_a
  
    lines = letters.map.with_index do |letter, index|
      [outer[index], letter, inner[index]]
    end
  
    lines += lines[0..-2].reverse 
  
    diamond = lines.map do |line|
      if line[1] == 'A'
        ' ' * line[0] + line[1] + ' ' * line[0]
      else
        ' '*line[0] + line[1] + ' '*line[2] + line[1] + ' '*line[0]
      end
    end.join("\n") +"\n"
    diamond
  end
end

Diamond.make_diamond('A')
