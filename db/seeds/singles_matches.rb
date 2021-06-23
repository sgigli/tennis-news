djokovic = Player.find_by(last_name: "Djokovic")
tsitsipas = Player.find_by(last_name: "Tsitsipas")

french_open = Tournament.find_by(name: "French Open")

matches = [
  {
    score: "6-7(6-8),2-6,6-3,6-2,6-4",
    winner_id: djokovic.id,
    date: Date.new(2021,06,13),
    player_1_id: djokovic.id,
    player_2_id: tsitsipas.id,
    tournament_id: french_open.id
  }
]

matches.each { |match| SinglesMatch.create!(match) }