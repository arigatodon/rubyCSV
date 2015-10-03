class Movie

  attr_accessor :dvd_title, :studio, :released, :status, :sound, :version, :price, :rating, :year, 
  :genre, :aspect , :upc ,:dvd_releasedate, :id , :timestamp

  def initialize(dvd_title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil,
   price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
   @dvd_title = dvd_title
   @studio = studio
   @released = released
   @status = status
   @sound = sound
   @version = version
   @price = price 
   @rating = rating
   @year = year
   @genre = genre
   @aspect = aspect
   @upc = upc
   @dvd_releasedate = dvd_releasedate
   @id = id
   @timestamp = timestamp

  end
end

=begin
Music = []
Documentary = [] 
Fantasy = []
Animation = [] 
=end
class Music < Movie
end

class Documentary < Movie
end

class Fantasy < Movie
end

class Animatio < Movie
end

