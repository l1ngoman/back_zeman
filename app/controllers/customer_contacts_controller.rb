class CustomerContactsController < ApplicationController
  before_action :set_customer_contact, only: [:show, :update, :destroy]

  # GET /customer_contacts
  def index
    @customer_contacts = CustomerContact.all

    render json: @customer_contacts
  end

  # GET /customer_contacts/1
  def show
    render json: @customer_contact
  end

  # POST /customer_contacts
  def create
    @customer_contact = CustomerContact.new(customer_contact_params)

    if @customer_contact.save
      render json: @customer_contact, status: :created, location: @customer_contact
    else
      render json: @customer_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customer_contacts/1
  def update
    if @customer_contact.update(customer_contact_params)
      render json: @customer_contact
    else
      render json: @customer_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customer_contacts/1
  def destroy
    @customer_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_contact
      @customer_contact = CustomerContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_contact_params
      params.require(:customer_contact).permit(:customer_id, :first_name, :last_name, :role, :phone, :email, :notes, :active)
    end
end
