#require 'minitest/autorun'
require 'test/unit'
require_relative '../add_to_playlist'


class TestPlaylist < Test::Unit::TestCase
  def setup
    @playlist = Playlist.new
  end

  def test_add_song
    @playlist.add_song("Song 1")
    assert_equal(["Song 1"], @playlist.songs)

    @playlist.add_song("Song 2")
    assert_equal(["Song 1", "Song 2"], @playlist.songs)
  end
end
