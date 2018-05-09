class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests))
    @flat.save
    redirect_to flat_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests))

    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy

    redirect_to flats_path
end
end
