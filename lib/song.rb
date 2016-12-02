

class Song
  attr_accessor :name,  :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename (filename)
    artist, name = filename.split(" - ").unshift.unshift
    new_song = Song.new(name)
    # Artist.find_or_create_by_name(artist).add_song(new_song)
    new_song.artist= Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(new_song)
    new_song
  end

end
