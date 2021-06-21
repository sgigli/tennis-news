djokovic = {
  first_name: "Novak",
  last_name: "Djokovic",
  country: "Serbia",
  singles_ranking: 1,
  singles_points: 5170,
  career_singles_record: "961/195",
  career_singles_titles: 84,
  doubles_ranking: 219,
  doubles_points: 390,
  career_doubles_record: "56/73",
  career_doubles_titles: 11,
  racquet_hand: "right",
  backhand: "double",
  height: 188,
  weight: 77,
  age: 34,
  birthday: Date.new(1987,5,22),
  prize_money: 149798813,
  residence: "Monte Carlo, Monaco",
  birthplace: "Belgrade, Serbia",
  coach: ["Marian Vajda", "Goran Ivanisevic"],
  mother: "Dijana Djokovic",
  father: "Srdan Djokovic"
}

NewPlayer.new(djokovic).create

barty = {
  first_name: "Ashleigh",
  last_name: "Barty",
  country: "Australia",
  singles_ranking: 1,
  singles_points: 8245,
  career_singles_record: "280/100",
  career_singles_titles: 11,
  doubles_ranking: 27,
  doubles_points: 2981,
  career_doubles_record: "195/63",
  career_doubles_titles: 11,
  racquet_hand: "right",
  backhand: "double",
  height: 166,
  weight: 62,
  age: 25,
  birthday: Date.new(1996,4,24),
  prize_money: 1203735,
  residence: "Ipswich, Australia",
  birthplace: "Ipswich, Australia",
  coach: ["Craig Tyzzer"],
  mother: "Josie Barty",
  father: "Robert Barty"
}

NewPlayer.new(barty).create