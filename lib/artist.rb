class Artist
  attr_accessor :songs, :name

  @@all = []

  def initialize (name)
    @name = name
    @songs ||= []
    save
  end

  def add_song (song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name (name)
    existing_artist = self.all.find { |artist| artist.name == name}
    existing_artist ? existing_artist : Artist.new(name)
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

end
