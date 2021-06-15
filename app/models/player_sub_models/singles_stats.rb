class SinglesStats < ApplicationRecord
  include SharedStatsMethods

  belongs_to :player

  has_many :standings, as: :stats, dependent: :destroy
  
end
