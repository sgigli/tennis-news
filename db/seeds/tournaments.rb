tournaments = [
  {
    name: "French Open",
    location: "Paris, France",
    start_date: Date.new(2021,5,30),
    end_date: Date.new(2021,6,13)
  }
]

tournaments.each { |tournament| Tournament.create!(tournament) }