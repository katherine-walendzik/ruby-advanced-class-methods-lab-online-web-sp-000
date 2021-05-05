class Song
  attr_accessor :name, :artist_name
  @@all = []
 
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def Song.create(name, artist)
    song = self.new
    song.name = name
    song.artist = artist
    @@all << song
    return song
  end
 
end