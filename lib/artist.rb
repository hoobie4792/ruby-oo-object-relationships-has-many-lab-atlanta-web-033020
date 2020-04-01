class Artist
    attr_reader :name, :songs
    
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.count
    end
end