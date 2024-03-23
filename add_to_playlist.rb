
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
