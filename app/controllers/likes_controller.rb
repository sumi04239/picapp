class LikesController < ApplicationController
  def create
    if Like.create(user_id: current_user.id, album_id: params[:id])
      redirect_to album_path
    end
  end

  def destroy
  Like.find_by(user_id: current_user.id, album_id: params[:id]).destroy
    redirect_to album_path
  end
end
