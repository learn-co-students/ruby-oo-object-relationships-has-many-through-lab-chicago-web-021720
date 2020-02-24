class Genre
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all.select{|song|song.genre = self.name}
  end
  def artists
    self.songs.map{|song| song.artist}
  end
end
