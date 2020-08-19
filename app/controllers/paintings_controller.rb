class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @paintings = Painting.all
  end

    def show
        @painting = Painting.find(params[:id])
    end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.user = User.where(first_name: current_user.first_name).first

    if @painting.save
      redirect_to @painting, notice: 'Painting was successfully added.'
    else
      render :new
    end
  end


  private

  def painting_params
    params.require(:painting).permit(:name, :description, :price_per_day, :address, :photo)
  end


end
