#require 'minitest/autorun'
require 'test/unit'
require_relative '../add_to_playlist'
require 'stringio'

class Test_add_song < Test::Unit::TestCase
  def test_add_song
  input = "Eternal Sunshine\nAriana Grande\n"
  expected_output = "Song added\n"
    # $stdin = StringIO.new("Eternal Sunshine\nAriana Grande\n")
 
      # assert_equal(expected_output, add_song)
 
  
  $stdin = StringIO.new(input)
  $stdout = StringIO.new

  result = add_song

  $stdin = STDIN
  actual_output = $stdout.string

  assert_equal(expected_output, actual_output)
    
  end

end
