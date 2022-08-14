class FavImagesController < ApplicationController
  def new
    @fav_image = FavImage.new
  end

  def create
    FavImage.create!(fav_image_params)
    redirect_to root_path
  end

  def delete
  end

  def index
    @fav_images = FavImage.all
  end

  private

  def fav_image_params
    params.require(:fav_image).permit(:name, :file)
  end
end
