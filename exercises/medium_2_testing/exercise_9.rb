require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_swapper'

# used the Constant to make sure file is being imported and read correclty. 

CHECK = <<~TEXT.chomp
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
et varius mauris, at pharetra mi.
TEXT

class TextTest < Minitest::Test

  def setup
    @file_handle = File.open('sample_text.txt')
    @file = Text.new(@file_handle.read)
  end

  def teardown
    @file_handle.close
  end

  #This test passed, just checked that everything is importing the way I want it to. Also had attr_reader :text in Text class.
  # def test_text
  #   assert_equal(@file, CHECK)
  # end

  def test_swap
    new_text = @file.swap('a', 'e')
    
    # used find and replace in MS Word to get the correct text 
    actual_text = <<~TEXT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT

    assert_equal(actual_text, new_text )
  end


end

