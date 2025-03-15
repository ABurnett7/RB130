require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_swapper'

class TextTest < Minitest::Test

  def setup
    @file_handle = File.open('sample_text.txt')
    @file = Text.new(@file_handle.read)
  end

  def teardown
    @file_handle.close
    puts "File has been closed: #{@file_handle.closed?}"
  end

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

  def test_word_count
    assert_equal(72, @file.word_count)
  end
end