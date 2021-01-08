class PicsController < ApplicationController
  def index
    @albums = Album.all
  end
end
