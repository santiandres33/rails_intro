class Artist < ApplicationRecord
  has_many :songs

  # def songs
  #   Song.where(id: self.artist_id)
  # end
end
