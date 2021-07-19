class SinglesMatch < ApplicationRecord
  include SharedMatchMethods

  belongs_to :player_1, :class_name => :Player
  belongs_to :player_2, :class_name => :Player
  belongs_to :tournament

  scope :atp, -> { where(tennis_association: "ATP") }
  scope :wta, -> { where(tennis_association: "WTA") }

  def sets
    score.split(",").map { |set| set.split("-") }
  end
end
