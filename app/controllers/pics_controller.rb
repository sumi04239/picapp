class PicsController < ApplicationController
  def index
    @albums = Album.all.order(created_at: :desc)
  end

end
