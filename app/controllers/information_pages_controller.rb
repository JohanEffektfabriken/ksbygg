class InformationPagesController < ApplicationController
  def about_us
  end

  def employee
  end

  def policy
  end

  def projects
  end

  def gallery
    @photos = GalleryPhoto.all
  end
end
