class Tournament < ApplicationRecord
  has_many :singles_matches, dependent: :destroy
end
