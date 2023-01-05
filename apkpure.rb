module Apk
    class Apkpure
        require 'nokogiri'
        require 'open-uri'
        def self.apklist(page)
            doc = Nokogiri::HTML(URI.open("https://m.apkpure.com/game-24h?page=#{page}"))
            doc.css('div.box ul li').map do |game|
                {
                    url: game.css('a').first['href'],
                    title: game.css('.d1').first.text,
                    img: game.css('.lazy').first.attr('data-original')
                }
            end
        end

        def self.search(query)
            doc = Nokogiri::HTML(URI.open("https://m.apkpure.com/search?q=#{query}"))
            doc.css('ul#search-res li').map do |game|
                {
                    url: game.css('a').first['href'],
                    title: game.css('a p.p1').first.text,
                    img: game.css('.lazy').first.attr('data-original')
                }
            end
        end

        def self.download(link)
            doc = Nokogiri::HTML(URI.open('https://m.apkpure.com' + link + '/download?from=details'))
            doc.css('p.down-click a').first['href']
        end
    end
end

# apk = Apk::Apkpure.apklist(2)
apks = Apk::Apkpure.search('BubbleUPnP')
p apks.first
# download_link = Apk::Apkpure.download(apk.first[:url])
# p download_link