module SharedStatsMethods
  def current_standing
    standings.find_by(current: true)
  end

  def current_ranking
    current_standing.ranking
  end

  def current_points
    current_standing.points
  end
end