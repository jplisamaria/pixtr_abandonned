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
  def show
    @image = Image.find(params[:id])
  end
  def edit
    @image = Image.find(params[:id])
  end
def update ##persistence to the database
    image = Image.find(params[:id])
    image.update(image_params)
    redirect_to image##"/galleries/#{gallery.id}"
end
def destroy
  image = Image.find(params[:id])
  image.destroy
  redirect_to image.gallery ## in lieu of gallery_path(image.gallery_id)
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
