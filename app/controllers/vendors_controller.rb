class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :update, :destroy]

  # GET /vendors
  def index
    @vendors = Vendor.all.order(name: :asc)
    @all_vendors = []
    @vendors.each do | vendor |
      @all_vendors << {vendor: vendor, locations: vendor.vendor_locations.where(active:true,primary:true), contacts: vendor.vendor_contacts}
    end    
    render json: @all_vendors
  end

  # GET /vendors/1
  def show
    @vendor_info = []
    @customer_accounts = []
    @vendor.customer_accounts.each do | acct |
      @customer_accounts << {
        id: acct.id,
        customer_id: acct.customer_id,
        account_number: acct.account_number, 
        customer_name: acct.customer.name, 
        phone_1: acct.customer.phone_1,
        phone_2: acct.customer.phone_2,
      }
    end

    @vendor_info << {
      vendor: @vendor, 
      locations: @vendor.vendor_locations, 
      contacts: @vendor.vendor_contacts, 
      accounts: @customer_accounts
    }
    render json: @vendor_info
  end

  # POST /vendors
  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      render json: @vendor, status: :created, location: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vendors/1
  def update
    if @vendor.update(vendor_params)
      render json: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vendors/1
  def destroy
    @vendor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendor_params
      params.require(:vendor).permit(:name, :phone, :website, :city, :state, :country, :hours, :notes, :active)
    end
end
