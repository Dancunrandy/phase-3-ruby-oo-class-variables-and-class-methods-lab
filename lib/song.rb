class Song
    attr_accessor :name, :artist, :genre
  
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end
  
    def self.count
      @@count
    end
  
    def self.artists
      @@artists.uniq
    end
  
    def self.genres
      @@genres.uniq
    end
  
    def self.genre_count
      @@genre_count = {}
      @@genres.each do |genre|
        if @@genre_count[genre]
          @@genre_count[genre] += 1
        else
          @@genre_count[genre] = 1
        end
      end
      @@genre_count
    end
  
    def self.artist_count
      @@artist_count = {}
      @@artists.each do |artist|
        if @@artist_count[artist]
          @@artist_count[artist] += 1
        else
          @@artist_count[artist] = 1
        end
      end
      @@artist_count
    end
  end
  ##You can test the implementation by running the code with the following commands
  ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
puts ninety_nine_problems.name  # => "99 Problems"
puts ninety_nine_problems.artist  # => "Jay-Z"
puts ninety_nine_problems.genre  # => "rap"

puts Song.count  # => 1

Song.new("Lucifer", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

puts Song.count  # => 3
puts Song.artists  # => ["Jay-Z", "Brittany Spears"]
puts Song.genres  # => ["rap", "pop"]
puts Song.genre_count  # => {"rap"=>2, "pop"=>1}
puts Song.artist_count  # => {"Jay-Z"=>2, "Brittany Spears"=>1}
