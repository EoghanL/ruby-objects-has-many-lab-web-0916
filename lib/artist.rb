class Artist

  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_nm)
    new_song = Song.new(song_nm)
    new_song.name = song_nm
    ##why do I have to set new_song.name = song_nm, shouldnt self.add_song(new_song) automatically do that?
    ## revist! with a deeper binding.pry maybe?
    self.add_song(new_song)
  end

  def self.song_count
    @@song_count
  end

end
