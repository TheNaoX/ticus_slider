module Admins
  class ImagePartsController < Admins::BaseController
    def new
      @image_part = ImagePart.new
    end

    def create
      @image_part = ImagePart.new(image_part_params)
      if @image_part.save
        redirect_to admins_image_parts_path, notice: "Imagen creada satisfactoriamente"
      else
        flash.now[:alert] = "No se pudo guardar la imagen"
        render :new
      end
    end

    private

    def image_part_params
      params.require(:image_part).permit(:type, :image)
    end
  end
end
