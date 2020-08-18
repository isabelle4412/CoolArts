class PaintingsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:show]
    def show
        @painting = Painting.find(params[:id])
        raise
    end
    
end
