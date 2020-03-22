class Artist
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_song(name, genre)
      Song.new(name, self, genre)
    end
  
    def songs
      Song.all.select { |song| song.artist == self }
    end
  
    def genres
      songs.map(&:genre)
    end
  end


# # require_relative 'song.rb'
# class Artist
#     attr_accessor :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def self.all 
#         @@all 
#     end

#     def songs
#         Song.all.select {|song| song.artist == self}

#         # array_of_songs = []
#         # for song in Song.all
#         #     if song.artist == self
#         #         array_of_songs.push(song)
#         #     end 
#         # end
#         # array_of_songs

#     end

#     def new_song(name, genre)
#         Song.new(name, self, genre)
#     end
# end