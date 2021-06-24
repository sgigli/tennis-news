class SinglesMatch < ApplicationRecord
  belongs_to :player_1, :class_name => :Player
  belongs_to :player_2, :class_name => :Player
  belongs_to :tournament

  def sets
    score.split(",").map { |set| set.split("-") }
  end
end
