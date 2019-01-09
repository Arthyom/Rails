class ImagesController < ApplicationController
    def index
    end

    def new 
    end

    def create
        @image = Image.new image_params
        @image.save
    end

    private
    
    def image_params
        params.require(:image).permit(:description)
    end


end
