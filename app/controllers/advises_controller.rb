class AdvisesController < ApplicationController
  def index
    @advises = Advise.all
  end
end
