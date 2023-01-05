require "uri"
require "net/http"

url = URI("https://www.veed.io/api/v1/stock-media/videos/search?keywords=nature&page=1&projectId=fc186d57-8d10-4476-91d9-3e19053ee03e")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Cookie"] = "GCLB=CNPx-IeO9r3VJw"

response = https.request(request)
puts response.read_body







require "uri"
require "net/http"

url = URI("https://www.veed.io/api/v1/stock-media/videos/download/10088528?projectId=fc186d57-8d10-4476-91d9-3e19053ee03e")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
puts response.read_body



