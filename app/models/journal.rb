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

#coding:utf-8
class Journal < ActiveRecord::Base

	#排序方式
	default_scope order: "updated_at DESC"
	
	attr_accessible :content, :title,:user_id, :token, :location

	has_many :pictures, :dependent => :destroy
	belongs_to :user

	def generate_token
		self.token = loop do
			random_token = SecureRandom.urlsafe_base64
			break random_token unless Journal.where(token: random_token).exists?
		end
	end

	#如果journal没有图片，就从share里随机选择一张
	def cover_image
		self.pictures.first ? self.pictures.first.image.little.url : "/uploads/journal_images/share/#{rand(11)}.jpg"  
	end	
	
end
