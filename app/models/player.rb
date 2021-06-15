class Player < ApplicationRecord
  belongs_to :country, optional: true

  has_one :team, dependent: :destroy
  has_one :size, dependent: :destroy
  has_one :earnings, dependent: :destroy
  has_one :playing_style, dependent: :destroy
  has_one :bio, dependent: :destroy
  has_one :singles_stats, dependent: :destroy
  has_one :doubles_stats, dependent: :destroy

  def overview
    {
      name: "#{first_name} #{last_name}",
      country: country&.name,
      singles_ranking: singles_stats&.current_ranking,
      singles_points: singles_stats&.current_points,
      singles_titles: singles_stats&.career_titles,
      singles_record: singles_stats&.career_record,
      doubles_ranking: doubles_stats&.current_ranking,
      doubles_points: doubles_stats&.current_points,
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

end
