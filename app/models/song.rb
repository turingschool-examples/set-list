class Song < ActiveRecord::Base
  belongs_to :playlist

  # validates :title, presence: true
  # validates :length, presence: true

  validates_presence_of :title, :length

  def self.total_play_count
    sum(:play_count)
  end
end
