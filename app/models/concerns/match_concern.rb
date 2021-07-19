module MatchConcern
  extend ActiveSupport::Concern

  included do
    scope :atp, -> { where(tennis_association: "ATP") }
    scope :wta, -> { where(tennis_association: "WTA") }
  end

  def sets
    score.split(",").map { |set| set.split("-") }
  end

  class_methods do
    ROUNDS = ["finals", "semi-finals", "quarter-finals", "fourth", "third", "second", "first"]

    def sort_by_round
      ROUNDS.map do |round|
        matches = where(round: round)
        matches.present? ? [round, matches] : nil
      end.reject(&:nil?).to_h
    end
  end
end