class RemoveSeedData
  def call
    ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

    Player.destroy_all
    Country.destroy_all
    Article.destroy_all
    TennisAssociation.destroy_all
    Tournament.destroy_all
  end
end