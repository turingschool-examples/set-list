RSpec.describe Song, type: :model do
  describe 'Class Methods' do
    it '.total_play_count' do
      Song.create(title: 'Song 1', length: 100, play_count: 5)
      Song.create(title: 'Song 2', length: 100, play_count: 4)
      Song.create(title: 'Song 3', length: 100, play_count: 3)
      Song.create(title: 'Song 4', length: 100, play_count: 2)
      Song.create(title: 'Song 5', length: 100, play_count: 1)

      expected = 15
      actual = Song.total_play_count
      expect(actual).to eq(expected)
    end
  end
  describe 'Validations' do
    it 'is invalid without a title' do
      song = Song.new(length: 100, play_count: 10)

      expect(song).to_not be_valid
    end
    it 'is invalid without a length' do
      song = Song.new(title: 'Song 1', play_count: 10)

      expect(song).to_not be_valid
    end
  end
end