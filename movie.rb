class Movie

  attr_accessor :dvd_title, :studio, :released, :status, :sound, :version, :price, :rating, :year, 
  :genre, :aspect , :upc ,:dvd_releasedate, :id , :timestamp

  def initialize(dvd_Title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil, price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
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
  def to_s
    return " ------------------------ \n Movie name:  #{dvd_title} \n release :#{released} \n category :  #{genre} \n rating :  #{rating} \n ------------------------"
  end

end

class Music < Movie
  def initialize(data = {})
    super
    @dvd_title = data[:dvd_title]
    @genre = data[:genre]
    @released = data[:release]
    @rating = data[:rating]
  end
end

class Documentary < Movie
  def initialize(data = {})
    super
    @dvd_title = data[:dvd_title]
    @genre = data[:genre]
    @released = data[:release]
    @rating = data[:rating]
  end
end

class Fantasy < Movie
  def initialize(data = {})
    super
    @dvd_title = data[:dvd_title]
    @genre = data[:genre]
    @released = data[:release]
    @rating = data[:rating]
  end
end

class Animation < Movie
  def initialize(data = {})
    super
    @dvd_title = data[:dvd_title]
    @genre = data[:genre]
    @released = data[:release]
    @rating = data[:rating]
  end
end

