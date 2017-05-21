class GardenBedsController < ApplicationController
  before_action :set_garden_bed, only: [:show, :edit, :update, :destroy]

  # GET /garden_beds
  # GET /garden_beds.json
  def index
    @garden_beds_grid = initialize_grid(GardenBed, name: 'garden_beds', enable_export_to_csv: true)
    export_grid_if_requested
  end

  # GET /garden_beds/1
  # GET /garden_beds/1.json
  def show
  end

  # GET /garden_beds/new
  def new
    @garden_bed = GardenBed.new
  end

  # GET /garden_beds/1/edit
  def edit
  end

  # POST /garden_beds
  # POST /garden_beds.json
  def create
    @garden_bed = GardenBed.new(garden_bed_params)

    respond_to do |format|
      if @garden_bed.save
        format.html { redirect_to @garden_bed, notice: 'Garden bed was successfully created.' }
        format.json { render :show, status: :created, location: @garden_bed }
      else
        format.html { render :new }
        format.json { render json: @garden_bed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garden_beds/1
  # PATCH/PUT /garden_beds/1.json
  def update
    respond_to do |format|
      if @garden_bed.update(garden_bed_params)
        format.html { redirect_to @garden_bed, notice: 'Garden bed was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden_bed }
      else
        format.html { render :edit }
        format.json { render json: @garden_bed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garden_beds/1
  # DELETE /garden_beds/1.json
  def destroy
    @garden_bed.destroy
    respond_to do |format|
      format.html { redirect_to garden_beds_url, notice: 'Garden bed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden_bed
      @garden_bed = GardenBed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garden_bed_params
      params.require(:garden_bed).permit(:id, :num, :comments)
    end
end
