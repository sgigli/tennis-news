class NewPlayer
  def initialize(options)
    options.each do |key, value|
      instance_variable_set("@#{key}".to_sym, value)
    end
  end


  def create
    player = Player.new(first_name: @first_name, last_name: @last_name)
    player.country = Country.find_or_create_by(name: @country)
    player.tennis_association = TennisAssociation.find_or_create_by(name: @association_name, acronym: @association_acronym)
    player.save!

    player.create_team(coach: @coach)
    player.create_size(height: @height, weight: @weight)
    player.create_earnings(prize_money: @prize_money)
    player.create_playing_style(racquet_hand: @racquet_hand, backhand: @backhand)
    player.create_bio(birthplace: @birthplace, age: @age, birthday: @birthday, mother: @mother, father: @father, residence: @residence)
    player.create_singles_stats(ranking: @singles_ranking, points: @singles_points, career_titles: @career_singles_titles, career_record: @career_singles_record)
    player.create_doubles_stats(ranking: @doubles_ranking, points: @doubles_points, career_titles: @career_doubles_titles, career_record: @career_doubles_record)

  end
end