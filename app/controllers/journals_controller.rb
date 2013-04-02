#coding:utf-8
class JournalsController < ApplicationController
  before_filter :authenticate_user!, except: :show

  def show
  	@journal = Journal.find(params[:id])
    @pictures = @journal.pictures.all 
  end

  def new
  	@journal = Journal.new()
    @journal.token = @journal.generate_token
    #@picture = @journal.pictures.build
    @pictures = []
  end

  def edit
  	@journal = Journal.find(params[:id])
    @pics = @journal.pictures.all 
    #@picture = @journal.pictures.build
    @pictures = []
  end

  def create
  	@journal = current_user.journals.new(params[:journal])
    @pictures = Picture.where(journal_token: @journal.token)
    @journal.pictures << @pictures
    if @journal.save
      current_user.add_role :admin, @journal
      redirect_to @journal, notice: "ok" 
    else
      render :action => 'new'
    end  	

  end

  def update
  	@journal = Journal.find(params[:id])
    @pictures = Picture.where(journal_token: @journal.token)
    @journal.pictures << @pictures
    if @journal.update_attributes(params[:journal])
      redirect_to @journal
    else
      render 'edit'
    end
  end

  def destroy
  	@journal = Journal.find(params[:id])
    @journal.destroy
    redirect_to root_url
  end
end
