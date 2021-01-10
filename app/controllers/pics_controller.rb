class PicsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    user = User.find(params[:id])
    @albums = user.albums
  end
end
