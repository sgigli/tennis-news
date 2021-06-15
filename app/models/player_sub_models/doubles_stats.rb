class DoublesStats < ApplicationRecord
  include SharedStatsMethods

  belongs_to :player

  has_many :standings, as: :stats

end
