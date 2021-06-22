class RemoveSeedData
  def call
    Player.all.each { |player| player.destroy }
    Country.all.each { |country| country.destroy }
    Article.all.each { |article| article.destroy }
    Association.all.each { |association| association.destroy }
  end
end