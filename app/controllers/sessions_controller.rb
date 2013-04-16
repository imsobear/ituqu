#coding:utf-8
class SessionsController < ApplicationController
	
	def create
		user =  User.find_by_uid(info['uid']) || create_user()

		self.current_user = user
		redirect_to root_path
	end


	def destroy
		current_user = nil
    session[:user_id] = nil
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
										description: user_info['description'], 
										weibo: user_info['urls']['Weibo'],
										blog: user_info['urls']['Blog'])
	end


end
