class PicsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @albums = Album.all.order(created_at: :desc)
  end

  def show
    albums = Album.all
    user = User.find(params[:id])
    @albums = user.albums.order(created_at: :desc)
  end
end
