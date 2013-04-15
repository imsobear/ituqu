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

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
