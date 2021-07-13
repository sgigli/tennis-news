tournaments = [
  {
    name: "French Open",
    location: "Paris, France",
    start_date: Date.new(2021, 5 ,30),
    end_date: Date.new(2021, 6, 13)
  },
  {
    name: "Wimbledon",
    location: "London, England",
    start_date: Date.new(2021, 6, 28),
    end_date: Date.new(2021, 7, 11)
  }
]

tournaments.each { |tournament| Tournament.create!(tournament) }