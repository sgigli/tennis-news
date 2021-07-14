class SearchFacade
  def initialize(entry)
    @entry = entry
  end

  def player_results
    @player_results ||= Player.all.select do |player|
      name = player.attributes.values_at("first_name", "last_name").join(" ").downcase
      name.include?(@entry) || @entry.include?(name)
    end
  end

  def article_results
    @article_results ||= Article.order_by_date.select do |article|
      title = article.title.downcase
      title.include?(@entry) || @entry.include?(title)
    end
  end

  def tournament_results
    @tournament_results ||= Tournament.order_by_date.select do |tournament|
      tournament_name = tournament.name.downcase
      tournament_name.include?(entry) || entry.include?(tournament_name)
    end
  end

  def singles_matches_results
    @singles_matches_results ||= @player_results.map { |player| player.singles_matches }.flatten
  end

  def no_results?
    !(player_results || article_results || tournament_results || singles_matches_results)
  end
end