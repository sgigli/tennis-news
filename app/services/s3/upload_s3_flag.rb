class UploadS3Flag
  def call(country, file_name = nil)
    photo_files = Dir["app/assets/images/flags/*"]
    file_name ||= country.downcase

    file = photo_files.detect do |file|
      flag_country = file.split("/").last.split(".").first
      flag_country == file_name
    end

    File.open(file) do |file|
      file_basename = file.path.split("/").last
      country_instance = Country.find_by(name: country)
      
      country_instance.flag.attach(
        io: file,
        filename: file_basename
      )
    end
  end
end