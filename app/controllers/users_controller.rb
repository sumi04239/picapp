class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @albums = Album.all
    @albums = current_user.albums.order(created_at: :desc)
  end
end
