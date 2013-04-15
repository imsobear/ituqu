#coding: utf-8
class HomeController < ApplicationController
  def index
  	@journals = Journal.paginate(page: params[:page])
  end
end
