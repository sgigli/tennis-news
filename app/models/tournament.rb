class Tournament < ApplicationRecord
  has_many :singles_matches, dependent: :destroy

  has_one_attached :image
end
