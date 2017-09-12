class Artist

  attr_reader :name, :songs
  @@song_count

  def initialize(name)
    @name=name
    @songs = []
    # @@songcount != nil ? @@songcount == @@songcount : @@songcount = 0
    @@song_count ||= 0
  end #  initialize

  def add_song(song)
    # puts "**************************CLASS-ARTIST-METHOD-ADD_SONG-VAR**song:#{song}"
    # puts "**************************CLASS-ARTIST-METHOD-ADD_SONG-VAR**self:#{self}"
    @songs << song
    @@song_count += 1
    song.artist(self)
  end #add_song

  def add_song_by_name(song_name)
    # puts "************CLASS-ARTIST-METHOD-ADD_SONG_by_name-VAR-song_name:#{song_name}"
    song = Song.new(song_name)
    add_song(song)
  end # add_song_by_name

  def self.song_count
    # puts "ARTIST--method song_count--got here"
    @@song_count
    # 10000
  end #song_count

  def artist_name
    # name = nil
    artist ? name = artist.name : name =nil
    name
  end #artist_name

end # class


#  1) Artist #name .song_count is a class method that returns the total number of songs associated
# to all existing artists
