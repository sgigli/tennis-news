class Search
  def call(entry)
    player_results = Player.all.select do |player|
      name = player.attributes.values_at("first_name", "last_name").join(" ").downcase
      name.include?(entry) || entry.include?(name)
    end
    player_arr = ["players", player_results]

    article_results = Article.order_by_date.select do |article|
      title = article.title.downcase
      title.include?(entry) || entry.include?(title)
    end
    article_arr = ["articles", article_results]

    singles_matches_results = player_results.map { |player| player.singles_matches }.flatten
    singles_matches_arr = ["singles_matches", singles_matches_results]

    [player_arr, article_arr, singles_matches_arr].map do |hash|
      hash[1].any? ? hash : nil
    end.reject(&:nil?).to_h
  end
end