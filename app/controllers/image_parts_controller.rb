class ImagePartsController < ApplicationController
  def index
    @image_parts = ImagePart.all
  end
end
