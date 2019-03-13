require './app/models/song.rb'
require './app/models/playlist.rb'

Song.destroy_all
Playlist.destroy_all

s1 = Song.create(title: "Don't Stop Believin'", length: 251, play_count: 760847)
s2 = Song.create(title: "Don't Worry Be Happy", length: 280, play_count: 65862)
s3 = Song.create(title: "Chicken Fried", length: 183, play_count: 521771)
s4 = Song.create(title: "Radioactive", length: 10000, play_count: 623547)

# this is out preferred method of associating data
p1 = Playlist.create(name: 'Funky Beats 2019')
p1.songs.create(title: 'Natural', length: 200, play_count: 1_000_000)


# because playlist has many 'songs', we can use that attribute name in the creation
p2 = Playlist.create(name: '1980 Dance Party', songs: [s1, s2])

s5 = Song.create(title: 'Superstitious', length: 225, play_count: 100_000)
p2.songs << s5

s6 = Song.create(title: 'Gold Digger', length: 180, play_count: 300, playlist: p2)
