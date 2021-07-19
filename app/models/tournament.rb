class Tournament < ApplicationRecord
  has_many :singles_matches, dependent: :destroy

  has_one_attached :image

  def self.order_by_start_date
    all.order("start_date desc")
  end
end
