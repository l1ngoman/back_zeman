class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]

  # GET /customers
  def index
    @customers = Customer.all.order(name: :asc)
    @all_customers = []
    @customers.each do | customer |
      @all_customers << {customer: customer, locations: customer.customer_locations.where(active:true)}
    end    
    render json: @all_customers
  end

  # GET /customers/1
  def show
    @customer_info = []
    @customer_accounts = []
    @customer.customer_accounts.each do | acct |
      @customer_accounts << {
        id: acct.id,
        vendor_id: acct.vendor_id,
        account_number: acct.account_number, 
        vendor_name: acct.vendor.name,
        terms: acct.terms,
        price_level: acct.price_level,
        freight_terms: acct.freight_terms
      }
    end

    @customer_info << {
      customer: @customer, 
      locations: @customer.customer_locations, 
      accounts: @customer_accounts
    }
    render json: @customer_info
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

    # POST /customers
  # POST /customers.json
  def create_from_spreadsheet
    require 'simple_xlsx_reader'
    workbook = SimpleXlsxReader.open '/Users/athom/Desktop/codingProjects/zeman_project/app/assets/customerlist.xlsx'
    @worksheets = workbook.sheets

    @worksheets[0].rows.each_with_index do |row, index|
        if index > 0
            @customer = Customer.new
            @golden_account = CustomerAccount.new
            @nova_account = CustomerAccount.new
            @location = CustomerLocation.new
            @customer.name = row[0] != nil ? row[0] : ''
            @customer.phone_1 = row[1] != nil ? row[1] : ''
            @customer.phone_2 = row[2] != nil ? row[2] : ''
            @customer.email = row[3] != nil ? row[3] : ''
            @golden_account.customer_id = row[12]
            @golden_account.vendor_id = 1
            @golden_account.account_number = row[4] != nil ? row[4] : ''
            @golden_account.terms = row[5] != nil ? row[5] : ''
            @golden_account.price_level = row[6] != nil ? row[6] : ''
            @golden_account.freight_terms = row[7] != nil ? row[7] : ''
            @nova_account.customer_id = row[12]
            @nova_account.vendor_id = 2
            @nova_account.account_number = row[8] != nil ? row[8] : ''
            @nova_account.terms = row[9] != nil ? row[9] : ''
            @nova_account.price_level = row[10] != nil ? row[10] : ''
            @nova_account.freight_terms = row[11] != nil ? row[11] : ''
            @location.customer_id = row[12]
            @location.primary_billing = row[13] != nil ? row[13] : ''
            @location.primary_shipping = row[14] != nil ? row[14] : ''
            @location.address_1 = row[15] != nil ? row[15] : ''
            @location.city = row[16] != nil ? row[16] : ''
            @location.state = row[17] != nil ? row[17] : ''
            if @customer.name != '' && @customer.name != nil
              @customer.save
            end
            if @golden_account.account_number != '' && @golden_account.account_number != nil
              @golden_account.save
            end
            if @nova_account.account_number != '' && @nova_account.account_number != nil
              @nova_account.save
            end
            if @location.address_1 != '' && @location.address_1 != nil
              @location.save
            end
        end
    end
    render 'new'
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:name, :phone_1, :phone_2, :email, :notes)
    end
end
