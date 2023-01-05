require "mp3info"
length = 0
file_name = ''
Mp3Info.open("audio.mp3") do |mp3info|
    file_name = mp3info.filename
    length = mp3info.length
end

st_time = 0
end_time = 58
vocal = 1

while st_time < length
    st = Time.at(st_time).utc.strftime "%H:%M:%S"
    et = Time.at(end_time).utc.strftime "%H:%M:%S"
    system("ffmpeg -i audio.mp3 -acodec copy -ss #{st} -to #{et} split_#{vocal}_#{file_name}")
    st_time = st_time + 58
    end_time = end_time + 58
    vocal = vocal + 1
end

