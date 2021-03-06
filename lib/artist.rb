class Artist

  attr_accessor :name
  attr_reader :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    self.genres << song.genre
    song.artist=(self)
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
