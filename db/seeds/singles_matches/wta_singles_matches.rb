barty = Player.find_by(last_name: "Barty")
pliskova = Player.find_by(last_name: "Pliskova")

wimbledon = Tournament.find_by(name: "Wimbledon")

wimbledon = [
  {
    score: "6-3,6-7,6-3",
    winner_id: barty.id,
    date: Date.new(2021,07,10),
    round: "finals",
    tennis_association: "WTA",
    player_1_id: barty.id,
    player_2_id: pliskova.id,
    tournament_id: wimbledon.id
  }
]

tournaments = [wimbledon]

tournaments.flatten.each do |match|
    SinglesMatch.create!(match)
end