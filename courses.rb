require 'nokogiri'
require 'open-uri'
print("Enter Url: ")
input = gets.chomp
doc = Nokogiri::HTML(URI.open("#{input}"))
titles = doc.css('p.sl-title').map{|t| t.text}
print('pydic = {')
titles.each do |t|
    print("'#{t.strip}': '',\n")
end
print('}')