require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://yts.mx/browse-movies?page=2'))

# Search for nodes by css
p doc.css('.browse-movie-wrap a').map { |link| link['href'] }