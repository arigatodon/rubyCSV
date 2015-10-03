#!/usr/bin/ruby
require 'csv' # require csv to access CSV module
require_relative 'movie.rb' # Require the class that we will use
file = File.open('dvd_csv_2.csv')
# Open the file with CSV
csv = CSV.new(
  file.read,
  headers: true,
  header_converters: :symbol,
  skip_blanks: true
)
movie = []
#category
Music1 = []
Documentary1 = [] 
Fantasy1 = []
Animation1 = []
# Convert each CSV::Row object in a hash
movie = csv.to_a.map(&:to_hash)
# Iterate over hashes


movie.each do |data|
  data.delete(:status)
  data.delete(:sound)
  data.delete(:versions) 
  data.delete(:aspect)  
  data.delete(:upc) 
  data.delete(:dvd_releasedate)
  data.delete(:id) 
  data.delete(:timestamp)
  puts "---------------------------------------------------------------"
  puts data# show data hash in console
end



movie.each do |m|
  case m[:genre]
  when 'Music'
    Music1 << Music.new(m)
  when "Documentary"
    Documentary1 << Documentary.new(m)
  when "Fantasy"  
    Fantasy1 << Fantasy.new(m)
  when "Animation"
    Animation1 << Animation.new(m)
  end
end
puts "/////////////////////Categorias/////////////////////////"
puts "         peliculas musicales : #{Music1.count}"
puts "         peliculas documentales : #{Documentary1.count}"
puts "         peliculas de fantasia : #{Fantasy1.count}"
puts "         peliculas animadas : #{Animation1.count}"
puts "////////////////////////////////////////////////////////"