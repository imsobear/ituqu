class UsersController < ApplicationController
	before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @journals = @user.journals.all
  end

  def edit
  end

  def update
    user = current_user
  	if current_user.update_attributes(params[:user])
  		redirect_to current_user
  	else
  		render 'edit'
  	end
  end
end
