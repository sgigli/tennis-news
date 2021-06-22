class Player < ApplicationRecord
  belongs_to :country, optional: true
  belongs_to :tennis_association, optional: true

  has_one :team, dependent: :destroy
  has_one :size, dependent: :destroy
  has_one :earnings, dependent: :destroy
  has_one :playing_style, dependent: :destroy
  has_one :bio, dependent: :destroy
  has_one :singles_stats, dependent: :destroy
  has_many :singles_matches, ->(player) { 
    unscope(where: :player_id).where("player_1_id = ? OR player_2_id = ?", player.id, player.id)
  }, dependent: :destroy
  has_one :doubles_stats, dependent: :destroy

  def overview
    {
      name: "#{first_name} #{last_name}",
      country: country&.name,
      singles_ranking: singles_stats&.ranking,
      singles_points: singles_stats&.points,
      singles_titles: singles_stats&.career_titles,
      singles_record: singles_stats&.career_record,
      doubles_ranking: doubles_stats&.ranking,
      doubles_points: doubles_stats&.points,
      doubles_titles: doubles_stats&.career_titles,
      doubles_record: doubles_stats.career_record,
      racquet_hand: playing_style&.racquet_hand,
      backhand: playing_style&.backhand,
      height: size&.height,
      weight: size&.weight,
      earnings: earnings&.prize_money,
      coach: team&.compact_coach,
      residence: bio&.residence
    }
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
