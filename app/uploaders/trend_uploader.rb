class TrendUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  version :thumb do
    cloudinary_transformation width: 48, height: 48, crop: :thumb
  end

  version :trend do
    cloudinary_transformation width: 300, height: 300, crop: :thumb
  end
end
