class DoublesMatch < ApplicationRecord
  include MatchConcern

  belongs_to :player_1, :class_name => :Player
  belongs_to :player_2, :class_name => :Player
  belongs_to :tournament
  
end
