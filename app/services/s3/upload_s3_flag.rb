class UploadS3Flag
  def call(country)
    photo_files = Dir["app/assets/images/flags/*"]

    file = photo_files.detect do |file|
      flag_country = file.split("/").last.split(".").first
      flag_country == country.downcase
    end

    File.open(file) do |file|
      file_basename = file.path.split("/").last
      country_name = file_basename.split(".").first.capitalize
      country = Country.find_by(name: country_name)

      country.flag.attach(
        io: file,
        filename: file_basename
      )
    end
  end
end