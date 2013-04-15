# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  uid         :integer
#  name        :string(255)
#  description :string(255)
#  email       :string(255)
#  avatar      :string(255)
#  weibo       :string(255)
#  location    :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
