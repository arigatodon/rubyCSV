require_relative 'movie.rb'

class Category < Movie

	def initialize(genre)
		@categoria = genre
		super(dvd_title,studio,released, status, sound, version,price,rating, year, genre, aspect,upc, dvd_releasedate, id,timestamp)
	end
accion = []
comedia = []
drama = []
	def verCategorias(categoria)

		
	end

end