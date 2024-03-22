require 'minitest/autorun'
require './add_to_playlist'
require 'stringio'
class Test_add_song < Minitest::Test
  def test_add_song
  input = "Eternal Sunshine\n"
  second_input = "Ariana Grande\n"
  expected_output = "Song added\n"

   # Redirect stdin to simulate user input
   $stdin = StringIO.new(input)

   # Redirect stdout to capture output
   $stdout = StringIO.new

   # Call the method that takes user input
   result = add_song

   # Reset stdin and get the captured output
   $stdin = STDIN
   actual_output = $stdout.string

   # Assert that the output matches the expected output
   assert_equal(expected_output, actual_output)

  #  simulated_user_input = StringIO.new("your input here\n")
  #  $stdin = simulated_user_input

  #  output = add_song

 #   $stdin = STDIN
 #   assert_equal "expected output", output


    
  end

end
