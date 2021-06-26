class Country < ApplicationRecord
  has_many :players

  has_one_attached :flag
end
