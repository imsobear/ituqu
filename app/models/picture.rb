class Picture < ActiveRecord::Base

  include Rails.application.routes.url_helpers
  mount_uploader :image, ImageUploader

  belongs_to :journal
  attr_accessible :image, :journal_token

  

  def to_jq_upload
    {
      "name" => read_attribute(:image),
      "size" => image.size,
      "url" => image.url,
      "littlenail_url" => image.little.url,
      "delete_url" =>  id,
      "picture_id" => id,
      "delete_type" => "DELETE"
    }
  end
end
