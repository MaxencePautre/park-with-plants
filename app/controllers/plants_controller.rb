class PlantsController < ApplicationController
  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new
     end
  end

  def destroy
    @plant = Plant.find(params[:id])
    garden = @plant.garden
    @plant.destroy
    redirect_to garden_path(garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :photo_url)
  end
end
