class GardensController < ApplicationController
  before_action :set_garden, only: :show 

  def index
    @gardens = Garden.all
  end

  def show
    @plant = Plant.new
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.save
    if @garden.save
      redirect_to gardens_path
    else render :new
    end
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :banner_url)
  end

  def set_garden
    @garden = Garden.find(params[:id])
  end

end
