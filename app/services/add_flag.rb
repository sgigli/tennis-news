class AddFlag
  def call
    # S3 Key of the existing file in the same bucket that storage.yml uses
    key = "headshots/djokovic_headshot.png"

    # Create an active storage blob that will represent the file on S3
    params = { 
      filename: "djokovic_headshot.png", 
      content_type: "png", 
      byte_size: 35.5, 
      checksum: "a0bc091e26a7b5bd8a29cf0966be8731" 
    }
    blob = ActiveStorage::Blob.create_before_direct_upload!(params)
    blob.update_attributes key:key

    country = Country.first
    country.update!(flag: blob.signed_id)

    # s3 = Aws::S3::Resource.new(region: "us-east-1")
    # obj = s3.bucket("tennis-news").object("djokovic_headshot.png")
  end
end
