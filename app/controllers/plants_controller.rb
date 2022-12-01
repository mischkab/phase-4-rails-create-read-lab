class PlantsController < ApplicationController
  # GET /plants
  def index
    plants = Plant.all
    render json: plants, status: :ok
  end


  # GET /plants/:id
  def show
    plant = Plant.find_by(id: params[:id])
    if plant
      render json: plant, status: :ok
    else
      render json: { error: "Plant not found."}, status: :not_found
    end
  end

  def create
    plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plant, status: :created
  end

  # POST /plants
end
