
=begin


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

#new_instance = Playlist.new

=end

class Playlist
  attr_accessor :songs

  def initialize
    @songs = []
  end

  def add_song(song)
    @songs << song
    puts "#{song} added to your playlist."
  end

  def display_playlist
    puts "Your playlist:"
    @songs.each_with_index do |song, index|
      puts "#{index + 1}. #{song}"
    end
  end
end

playlist = Playlist.new

loop do
  puts "\nOptions:"
  puts "1. See your playlist"
  puts "2. Add a song to your playlist"
  puts "3. Exit"
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    loop do
      puts "\nPlaylist Options:"
      puts "1. View current songs"
      puts "2. Back to main menu"
      print "Enter your choice: "
      sub_choice = gets.chomp.to_i

      case sub_choice
      when 1
        playlist.display_playlist
      when 2
        break
      else
        puts "Invalid choice. Please try again."
      end
    end
  when 2
    print "Enter the name of the song to add: "
    song = gets.chomp
    playlist.add_song(song)
  when 3
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
