class UploadS3Article
  def call(article_title:, file_name:)
    photo_files = Dir["app/assets/images/articles/*"]

    file = photo_files.detect do |file|
      file_end = file.split("/").last.split(".").first
      file_end == file_name
    end

    File.open(file) do |file|
      file_basename = file.path.split("/").last
      article = Article.find_by(title: article_title)

      article.images.attach(
        io: file,
        filename: file_basename
      )
    end
  end
end