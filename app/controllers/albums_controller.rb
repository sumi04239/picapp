class AlbumsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]
  
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
      if @album.update(album_params)
      redirect_to "/pics/#{@album.id}"
    else
      render :edit
    end
  end

  def destroy
    if @album.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    @albums = Album.search(params[:keyword])
  end  

  private
  def album_params
    params.require(:album).permit(:title, :text, :image).merge(user_id: current_user.id)
  end

  def set_item
    @album = Album.find(params[:id])
  end
end
