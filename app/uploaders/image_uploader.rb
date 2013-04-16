# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/journal_images/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :little do
    process :resize_to_fill => [120,80]
  end

  # version :big do
  #   process :resize_to_fill => [800,400]
  # end

  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end
  
end
