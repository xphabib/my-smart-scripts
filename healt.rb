require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://www.healthline.com/health/gout/keto-and-gout'))

# Search for nodes by css
htm = doc.css('article.article-body')#.to_html
#htm.search('.//form').remove
text = htm.to_s.gsub(/\n/, '')
p text