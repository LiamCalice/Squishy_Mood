class StickersController < ApplicationController
    before_action :find_sticker, only: [:edit, :update, :destroy]
    
    def index
        @stickers = Sticker.all.order("created_at DESC")
    end
    
    def new
        @sticker = Sticker.new
    end
    
    def create
        @sticker = Sticker.new(sticker_params)
        if @sticker.save
            redirect_to root_path    
        else
            render 'new'    
        end
    end
    
    def edit
    end
    
    def update
        if @sticker.update(sticker_params)
            redirect_to root_path    
        else
            render 'edit'
        end
    end
    
    def destroy
        @sticker.destroy
        redirect_to root_path
    end
    
    private
    
    def sticker_params
       params.require(:sticker).permit(:name) 
    end
    
    def find_sticker
        @sticker = Sticker.find(params[:id])
    end
    
end
