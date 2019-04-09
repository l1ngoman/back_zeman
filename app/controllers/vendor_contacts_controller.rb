class VendorContactsController < ApplicationController
  before_action :set_vendor_contact, only: [:show, :update, :destroy]

  # GET /vendor_contacts
  def index
    @vendor_contacts = VendorContact.all

    render json: @vendor_contacts
  end

  # GET /vendor_contacts/1
  def show
    render json: @vendor_contact
  end

  # POST /vendor_contacts
  def create
    @vendor_contact = VendorContact.new(vendor_contact_params)

    if @vendor_contact.save
      render json: @vendor_contact, status: :created, location: @vendor_contact
    else
      render json: @vendor_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vendor_contacts/1
  def update
    if @vendor_contact.update(vendor_contact_params)
      render json: @vendor_contact
    else
      render json: @vendor_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vendor_contacts/1
  def destroy
    @vendor_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_contact
      @vendor_contact = VendorContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendor_contact_params
      params.require(:vendor_contact).permit(:vendor_id, :first_name, :last_name, :role, :phone, :email, :notes, :active)
    end
end
