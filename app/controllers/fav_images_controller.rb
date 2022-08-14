class FavImagesController < ApplicationController
  def new
    @fav_image = FavImage.new
  end

  def create
    FavImage.create!(fav_image_params)
    redirect_to root_path
  end

  def destroy
    FavImage.destroy(params[:id])
    redirect_to root_path
  end

  def index
    @fav_images = FavImage.all
  end

  def edit
    @fav_image = FavImage.find(params[:id])
  end

  def update
    @fav_image = FavImage.find(params[:id])
    @fav_image.update!(fav_image_update_params)
    redirect_to root_path
  end

  private

  def fav_image_params
    params.require(:fav_image).permit(:name, :file)
  end

  def fav_image_update_params
    params.require(:fav_image).permit(:name)
  end
end
