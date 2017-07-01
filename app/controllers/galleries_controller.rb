class GalleriesController < ApplicationController
  def index
    @images = Image.all
  end
end
