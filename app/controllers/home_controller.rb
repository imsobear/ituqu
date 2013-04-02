class HomeController < ApplicationController
  def index
  	@journals = Journal.paginate(page: params[:page])
  end
end
