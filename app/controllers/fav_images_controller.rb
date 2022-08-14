class FavImagesController < ApplicationController

  def index
    @fav_images = FavImage.all
  end

  def new
    @fav_image = FavImage.new
  end

  def create
    f = FavImage.create(fav_image_params)
    redirect_to root_path
  end

  def edit
    @fav_image = FavImage.find(params[:id])
  end

  def update
    @fav_image = FavImage.find(params[:id])
    @fav_image.update(fav_image_update_params)
    redirect_to root_path
  end

  def destroy
    FavImage.destroy(params[:id])
    redirect_to root_path
  end

  # Bulk

  def bulk_new
    @fav_image = FavImage.new
  end

  # FIXME: too slow
  def bulk_create
    files = fav_image_bulk_params[:files].reject {|i| i.blank? }
    files.each do |file|
      FavImage.create(file: file)
    end
    redirect_to root_path
  end

  private

  def fav_image_params
    params.require(:fav_image).permit(:name, :file)
  end

  def fav_image_update_params
    params.require(:fav_image).permit(:name)
  end

  def fav_image_bulk_params
    params.require(:fav_image).permit(files: [])
  end
end
