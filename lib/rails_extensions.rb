class Array
  ROUNDS = ["finals", "semi-finals", "quarter-finals", "fourth", "third", "second", "first"]

  def sort_by_round
    ROUNDS.map do |round|
      matches = self.select { |match| match.round == round}
      # matches = singles_matches.where(round: round)
      matches.present? ? [round, matches] : nil
    end.reject(&:nil?).to_h
  end
end