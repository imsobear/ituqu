# == Schema Information
#
# Table name: journals
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  token      :string(255)
#

require 'test_helper'

class JournalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
