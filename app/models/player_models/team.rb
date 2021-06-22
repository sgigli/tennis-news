class Team < ApplicationRecord
  serialize :coach

  belongs_to :player

  def compact_coach
    coach.length == 1 ? coach.first : coach
  end
end
