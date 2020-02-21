class Genre
    attr_accessor :name
    attr_reader

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.find_all { |song| song.genre == self}
    end

    def artists
        self.songs.map { |song| song.artist }
    end

end