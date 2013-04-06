class PicturesController < ApplicationController

  def index
    
  end
  
  def create    
    p_attr = params[:picture]
    @picture = Picture.new(p_attr)
    if @picture.save
      respond_to do |format|
        format.html {  
          render :json => [@picture.to_jq_upload].to_json, 
          :content_type => 'text/html',
          :layout => false
        }
        format.json {  
          render :json => [@picture.to_jq_upload].to_json     
        }
      end
    else 
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end

  def destroy
    @picture = pictures.find(params[:id])
    @picture.destroy
    render :json => true
  end

end
