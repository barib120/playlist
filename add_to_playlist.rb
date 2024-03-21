require_relative  "songs"

pp "Hi, welcome to your playlist"

class Playlist
  def initialize
  @songs = []

  end

  def options

    loop do 

      puts "What do you want to do?"
      puts "1. See your playlist"
      puts "2. Add to yout play list"
      puts "3. Exit"

      option = gets.chomp.to_i
