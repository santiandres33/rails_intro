class Book < ApplicationRecord
  has_many :chapters
  has_many :sentences, through: :chapters
end
