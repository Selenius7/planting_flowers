require 'flowers_parser'

class FlowersController < ApplicationController
  before_filter :find_flower, only: [:show, :edit, :update, :destroy]

  def index
    @flowers_grid = initialize_grid(Flower, include: [:culture, :garden_bed], name: 'flowers', enable_export_to_csv: true)
    export_grid_if_requested
  end

  def new
    @flower = Flower.new
  end

  def create
    @flower = Flower.new(flower_params)
    if @flower.save
      redirect_to @flower
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower.update(flower_params)
    redirect_to @flower
  end

  def destroy
    @flower.destroy
    redirect_to flowers_path
  end

  def import
  end

  def import_complete
    FlowersParser.new(file: params[:file].tempfile).parse
    redirect_to flowers_path
  end

  private

  def find_flower
    @flower = Flower.find(params[:id])
  end

  def flower_params
    params.require(:flower).permit(:f_name, :culture_id, :cost, :garden_bed_id, :planting_date)
  end
end
