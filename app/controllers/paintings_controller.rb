class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

     if params[:query].present?
      @paintings = Painting.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @paintings = Painting.all
    end
  end


    def show
      @painting = Painting.find(params[:id])
      @booking = Booking.new
    end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.user = User.where(first_name: current_user.first_name).first

    if @painting.save
      redirect_to @painting, notice: 'La peinture a bien été ajoutée ! '
    else
      render :new
    end
  end

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :price_per_day, :address, :photo)
  end

end
