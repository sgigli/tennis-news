djokovic = Player.find_by(last_name: "Djokovic")
tsitsipas = Player.find_by(last_name: "Tsitsipas")
berrettini = Player.find_by(last_name: "Berrettini")

french_open = Tournament.find_by(name: "French Open")
wimbledon = Tournament.find_by(name: "Wimbledon")

french_open = [
  {
    score: "6-7,2-6,6-3,6-2,6-4",
    winner_id: djokovic.id,
    date: Date.new(2021,06,13),
    round: "finals",
    player_1_id: djokovic.id,
    player_2_id: tsitsipas.id,
    tournament_id: french_open.id
  }
]

wimbledon = [
  {
    score: "6-7,6-4,6-4,6-3",
    winner_id: djokovic.id,
    date: Date.new(2021,07,11),
    round: "finals",
    player_1_id: djokovic.id,
    player_2_id: berrettini.id,
    tournament_id: wimbledon.id
  }
]

tournaments = [french_open, wimbledon]

tournaments.flatten.each do |match|
    SinglesMatch.create!(match)
end