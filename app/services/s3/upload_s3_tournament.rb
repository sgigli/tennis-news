class UploadS3Tournament
  def call(tournament)
    photo_files = Dir["app/assets/images/tournaments/*"]

    file = photo_files.detect do |file|
      file_name = file.split("/").last.split(".").first
      file_name == tournament.downcase
    end

    File.open(file) do |file|
      file_basename = file.path.split("/").last
      tournament_name = tournament.split("_").map(&:capitalize).join(" ")
      tournament = Tournament.find_by(name: tournament_name)

      tournament.image.attach(
        io: file,
        filename: file_basename
      )
    end
  end
end