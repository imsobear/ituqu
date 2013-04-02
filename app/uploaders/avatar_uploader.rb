# encoding: utf-8
class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/avatar/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  #process :resize_to_fit => [100, 100]

  # #头像
  version :avatar do
    process :resize_to_fill => [100,100]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
end
