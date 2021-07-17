class UploadS3Headshot
  def call(player)
    photo_files = Dir["app/assets/images/headshots/*"]

    file = photo_files.detect do |file|
      player_last_name = file.split("/").last.split(".").first
      player_last_name == player.downcase
    end

    File.open(file) do |file|
      file_basename = file.path.split("/").last
      player = Player.find_by(last_name: player.capitalize)

      player.headshot.attach(
        io: file,
        filename: file_basename
      )
    end
  end
end