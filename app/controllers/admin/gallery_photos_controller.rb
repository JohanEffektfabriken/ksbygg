class Admin::GalleryPhotosController < AdminController
  before_action :find_photo, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @photo = GalleryPhoto.new
    @photos = GalleryPhoto.all
  end

  def create
    @photo = GalleryPhoto.create(secure_params)
  end

  def edit
  end

  def update
  end

  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to new_admin_gallery_photo_path }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def find_photo
    @photo = GalleryPhoto.find(params[:id])
  end

  def secure_params
    params.require(:gallery_photo).permit(:photo)
  end
end
