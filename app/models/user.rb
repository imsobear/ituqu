#coding: utf-8
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

class User < ActiveRecord::Base
  rolify

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :uid, :email, :location, :avatar, :description, 
  								:weibo,:blog

  has_many :journals

end
