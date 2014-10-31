class PhotosController < ApplicationController

  def index
    @photo = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      flash[:notice] = "Photo saved successfully!"
      redirect_to @photo
    else
      flash[:error] = "Photo not saved!"
      render :new
    end
  end

  def show 
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:file, :category, :homepage)
  end

end