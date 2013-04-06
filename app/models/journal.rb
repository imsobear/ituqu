#coding:utf-8
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
#

class Journal < ActiveRecord::Base

	#排序方式
	default_scope order: "created_at DESC"
	
	attr_accessible :content, :title,:user_id, :token

	has_many :pictures, :dependent => :destroy
	belongs_to :user

	# validates :title, presence: true, 
	# 					length: {minimum: 1, message: "标题至少有一个字"}
	validates :content, presence: true, 
	length: {minimum: 5, message: "Too short"}


	def generate_token
		self.token = loop do
			random_token = SecureRandom.urlsafe_base64
			break random_token unless Journal.where(token: random_token).exists?
		end
	end

end
