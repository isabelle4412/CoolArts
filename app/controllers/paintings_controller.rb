class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @paintings = Painting.all
  end
end
