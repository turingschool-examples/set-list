RSpec.describe 'song index worklow' do
  context 'as a visitor' do
    it 'should show all song content' do
      song_1 = Song.create(title: 'Song 1', length: 100, play_count: 10)

      playlist = Playlist.create(name: 'Fun Songs 2019')
      song_2 = playlist.songs.create(title: 'Song 1', length: 200, play_count: 20)

      visit '/songs'

      within "#song-#{song_1.id}" do
        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Length: #{song_1.length}")
        expect(page).to have_content("Play Count: #{song_1.play_count}")

        expect(page).to_not have_content('Playlist Name:')
      end

      within "#song-#{song_2.id}" do
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Length: #{song_2.length}")
        expect(page).to have_content("Play Count: #{song_2.play_count}")

        expect(page).to have_content("Playlist Name: #{playlist.name}")
      end
    end
  end
end