class Tournament < ApplicationRecord
  has_many :singles_matches, dependent: :destroy

  has_one_attached :image

  ROUNDS = ["finals", "semi-finals", "quarter-finals", "fourth", "third", "second", "first"]

  def self.order_by_start_date
    all.order("start_date desc")
  end

  def singles_matches_by_round
    ROUNDS.map do |round|
      matches = singles_matches.where(round: round)
      matches.present? ? [round, matches] : nil
    end.reject(&:nil?).to_h
  end
end
