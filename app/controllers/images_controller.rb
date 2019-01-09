class ImagesController < ApplicationController
    def index
        @images = Image.all 
    end

    def new 
        @image = Image.new
    end

    def edit
        @image = Image.find(params[:id])
    end

    def update
        @image = Image.find params[:id]
        @image.update = image_params
        redirect_to @image
    end
    def show
        @image = Image.find params[:id]
    end

    def create
        @image = Image.new image_params
        @image.save
        redirect_to @image
    end

    private
    
    def image_params
        params.require(:image).permit(:description)
    end


end
