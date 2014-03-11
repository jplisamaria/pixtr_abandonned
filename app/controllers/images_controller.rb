class ImagesController < ApplicationController


  def new
    @gallery = Gallery.find(params[:gallery_id])
    @image = Image.new
  end
  def create
    gallery = Gallery.find(params[:gallery_id]) ##find the gallery
    gallery.images.create(image_params) ## create the image throught the gallery
    redirect_to gallery ## redirect to the gallery
  end




private  

  def image_params  ##strong parameter stuff
    params.require(:image).permit(
      :name, 
      :description, 
      :url
    )
  end
end         ## this renders an index view
