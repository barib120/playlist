class Song

  attr_accessor :song_name, :artist

  def initialize(song_name, artist)

    @song_name = song_name
    @artist = artist

  end

  def to_s

    "#{song_name} by #{artist}"
  end
end
