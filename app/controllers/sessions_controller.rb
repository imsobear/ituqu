#coding:utf-8
class SessionsController < ApplicationController
	
	def create
		user =  User.find_by_uid(info['uid']) || false
		#第一次认证
		unless user
			#保存用户
			create_user()
		end

		self.current_user = user
		redirect_to root_path
	end

	private

	def info
		request.env['omniauth.auth'].to_hash
	end

	def create_user
		user_info = info['info']
		user = User.create(uid: info['uid'], name: user_info['nickname'], 
										location: user_info['location'], avatar: user_info['image'],
										description: user_info['description'], weibo: user_info['weibo'])
	end

end
