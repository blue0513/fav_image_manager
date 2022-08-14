class FavImagesController < ApplicationController
  def new
    @fav_image = FavImage.new
  end

  def create
    FavImage.create!(fav_image_params)
    redirect_to root_path
  end

  def destroy
    FavImage.destroy(fav_image_delete_id)
    redirect_to root_path
  end

  def index
    @fav_images = FavImage.all
  end

  def update
  end

  private

  def fav_image_params
    params.require(:fav_image).permit(:name, :file)
  end

  def fav_image_delete_id
    params[:id]
  end
end
