require 'minitest/autorun'
require './add_to_playlist'

class Test_add_song < Minitest::Test
  def test_user_input
    simulated_user_input = StringIO.new("your input here\n")
    $stdin = simulated_user_input

    output = add_song

    $stdin = STDIN
    assert_equal "expected output", output
    
  end
end
