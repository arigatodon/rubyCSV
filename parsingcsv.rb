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
# Convert each CSV::Row object in a hash
movie = csv.to_a.map(&:to_hash)
# Iterate over hashes
movie.each do |data|
  puts data[:genre]# show data hash in console
end



