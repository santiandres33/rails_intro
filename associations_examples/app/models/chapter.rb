class Chapter < ApplicationRecord
  belongs_to :book
  has_many :sentences
end
