# == Schema Information
#
# Table name: pictures
#
#  id            :integer          not null, primary key
#  description   :string(255)
#  image         :string(255)
#  journal_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  journal_token :string(255)
#

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
