require 'minitest/autorun'
require_relative '../playlist/add_to_playlist'
require 'stringio'
class Test_add_song < Minitest::Test
  def test_add_song
 # input = "Eternal Sunshine\nAriana Grande\n"
  
 $stdin = StringIO.new("Eternal Sunshine\nAriana Grande\n")
 expected_output = "Song added\n"
  assert_equal(expected_output, add_song)
 
  
  $stdin = STDIN
  


    
  end

end
