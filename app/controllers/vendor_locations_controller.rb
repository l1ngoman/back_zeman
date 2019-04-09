class VendorLocationsController < ApplicationController
  before_action :set_vendor_location, only: [:show, :update, :destroy]

  # GET /vendor_locations
  def index
    @vendor_locations = VendorLocation.all

    render json: @vendor_locations
  end

  # GET /vendor_locations/1
  def show
    render json: @vendor_location
  end

  # POST /vendor_locations
  def create
    @vendor_location = VendorLocation.new(vendor_location_params)

    if @vendor_location.save
      render json: @vendor_location, status: :created, location: @vendor_location
    else
      render json: @vendor_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vendor_locations/1
  def update
    if @vendor_location.update(vendor_location_params)
      render json: @vendor_location
    else
      render json: @vendor_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vendor_locations/1
  def destroy
    @vendor_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_location
      @vendor_location = VendorLocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendor_location_params
      params.require(:vendor_location).permit(:vendor_id, :address_1, :address_2, :city, :state, :zip, :country, :notes, :active)
    end
end
