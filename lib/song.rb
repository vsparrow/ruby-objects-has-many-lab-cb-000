class Song
  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end # initialize

  def artist(artist_object=@artist)
    @artist = artist_object
    # @artist = name
    # puts "**********CLASS-SONG-METHOD-ARTIST-VAR:artist_object#{artist_object}"
    @artist
  end # artist

  def artist=(artist_object)
    @artist = artist_object
  end # artist=


  def artist_name
    # name = nil
    artist ? name = artist.name : name =nil
    name
  end #artist_name

end # class



  # 1) Artist #name #add_song takes in an argument of a song and adds that song to the artist's collection
  # and tells the song
