class Artist

  attr_reader :name, :songs
  @@all = []
  @@song_count = []

  def initialize(name)
    @name=name
    @songs=[]
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist= self
  end

  def add_song_by_name(name )
    song=Song.new(name)
    @songs << song
    song.artist=self
  end

  def self.song_count
    allsongs = 0
    @@all.each  { |artist| allsongs += artist.songs.count}
    @@song_count = allsongs
  end

end # class
