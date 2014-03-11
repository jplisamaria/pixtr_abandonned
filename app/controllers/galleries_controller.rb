class GalleriesController < ApplicationController
  def index ## no need to erb :index, Rails does this automatically.    
    @galleries = Gallery.all
  end       ## index is a method or action
  def show
    @gallery = Gallery.find(params[:id])
  end
  def new ##presentation of the form
    @gallery = Gallery.new  
  end
  def create ##persistence to the database
    gallery = Gallery.create(gallery_params) ##gallery_params instead of params[:gallery]
    redirect_to gallery_path(gallery)##"/galleries/#{gallery.id}"
  end
  def edit ##presentation of form
    @gallery = Gallery.find(params[:id])
  end
  def update ##persistence to the database
    gallery = Gallery.find(params[:id])
    gallery.update(gallery_params)
    redirect_to gallery_path(gallery)##"/galleries/#{gallery.id}"
  end
  def destroy
    gallery = Gallery.find(params[:id])
    gallery.destroy
    redirect_to root_path
  end

private  

  def gallery_params  ##strong parameter stuff
    params.require(:gallery).permit(:name)
  end
end         ## this renders an index view

