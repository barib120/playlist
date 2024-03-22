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
      puts "2. Add to your play list"
      puts "3. Exit"

      option = gets.chomp.to_i
      case option

      when 1
        see_songs
      
      when 2

        add_song

      when 3

        puts "See you next time"
        Exit
      else 

        puts "That does not work. You need to choose option 1, 2, or 3."

      end
    
    end
  end

  def see_songs

    puts "Your songs"
    break

    @songs.each do |song|

      puts song

    end

  end

  def add_song
    puts "Enter the name of the song"

    song_name = gets.chomp

    puts "Enter the name of the song artist"

    artist = gets.chomp
    
    @songs << Song.new(song_name, artist)

    puts "Song added"

    
  end

end
