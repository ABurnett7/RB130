class TextAnalyzer
  def process
    file = File.open('exercise_2_text.txt')   # book answer has 1 optional argument File.open('exercise_2_text.txt', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
# analyzer.process { |text| puts text } # checked that we're reading the file correctly
analyzer.process { |text| puts "#{text.split(/\n\s*\n/).count} paragraphs"}
analyzer.process { |text| puts "#{text.each_line.count} lines"} 
analyzer.process { |text| puts "#{text.split(' ').size} words" }
