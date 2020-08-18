class PaintingsController < ApplicationController
    def show
        @painting = Paintings.find(params[:id])
    end
end
