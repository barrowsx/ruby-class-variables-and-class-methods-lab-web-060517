require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    @genre_count = @@genres.uniq.each_with_object({}) do |genre, new_hash|
      new_hash[genre] = @@genres.count(genre)
    end
  end

  def self.artist_count
    @artist_count = @@artists.uniq.each_with_object({}) do |artist, new_hash|
      new_hash[artist] = @@artists.count(artist)
    end
  end
end
