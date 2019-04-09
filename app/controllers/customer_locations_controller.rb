class CustomerLocationsController < ApplicationController
  before_action :set_customer_location, only: [:show, :update, :destroy]

  # GET /customer_locations
  def index
    @customer_locations = CustomerLocation.all

    render json: @customer_locations
  end

  # GET /customer_locations/1
  def show
    render json: @customer_location
  end

  # POST /customer_locations
  def create
    @customer_location = CustomerLocation.new(customer_location_params)

    if @customer_location.save
      render json: @customer_location, status: :created, location: @customer_location
    else
      render json: @customer_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customer_locations/1
  def update
    if @customer_location.update(customer_location_params)
      render json: @customer_location
    else
      render json: @customer_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customer_locations/1
  def destroy
    @customer_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_location
      @customer_location = CustomerLocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_location_params
      params.require(:customer_location).permit(:customer_id, :address_1, :address_2, :city, :state, :zip, :country, :phone, :notes, :primary_billing, :primary_shipping, :active)
    end
end
