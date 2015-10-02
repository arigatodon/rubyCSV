#!/usr/bin/ruby
require 'csv' # require csv to access CSV module
require_relative 'movie.rb' # Require the class that we will use
require_relative 'category.rb'

file = File.open('dvd_csv_2.csv')

# Open the file with CSV
csv = CSV.new(
  file.read,
  headers: true,
  header_converters: :symbol,
  skip_blanks: true
)

# Convert each CSV::Row object in a hash
hashes = csv.to_a.map(&:to_hash)

# cars variable to save all objects created
movie = []

# Iterate over hashes
hashes.each do |data|
  # data is each hash into hashes array

  puts data # show data hash in console

  movieio = Movie.new
  movieio.dvd_Title = data[:dvd_Title]
  movieio.studio = data[:studio]
  movieio.released = data[:released]
  movieio.status = data[:status]
  movieio.sound = data[:sound]
  movieio.version = data[:version]
  movieio.price = data[:price] 
  movieio.rating = data[:rating]
  movieio.year = data[:year]
  movieio.genre = data[:genre]
  movieio.aspect = data[:aspect]
  movieio.upc = data[:upc]
  movieio.dvd_releasedate = data[:dvd_releasedate]
  movieio.id = data[:id]
  movieio.timestamp = data[:timestamp]

  # push tempcar object to movie array
  movie << movieio
end



puts "------------------"
p movie[4]