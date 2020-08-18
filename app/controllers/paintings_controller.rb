class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @paintings = Painting.all
  end
    def show
        @painting = Paintings.find(params[:id])
    end
end
