class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @paintings = Painting.all
  end
    def show
        @painting = Painting.find(params[:id])
    end
    
end
