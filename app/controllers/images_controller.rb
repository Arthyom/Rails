class ImagesController < ApplicationController
    
    before_action :find_image, only: [:edit, :update, :show, :destroy]

    def index
        @images = Image.all 
    end

    def new 
        @image = Image.new
    end

    def edit
    end

    def update
        @image.update image_params
        redirect_to @image
    end

    def destroy
        @image.destroy
        redirect_to images_path
    end

    def show
    end

    def create
        @image = Image.new image_params
       if @image.save
        return redirect_to @images_path
       end
       render :new
    end

    private
    
    def image_params
        params.require(:image).permit(:description, :picture)
    end

    def find_image
        @image = Image.find params[:id]
    end


end
