class CustomerAdressesController < ApplicationController
  before_action :set_customer_adress, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customer_adresses = CustomerAdress.all
    respond_with(@customer_adresses)
  end

  def show
    respond_with(@customer_adress)
  end

  def new
    @customer_adress = CustomerAdress.new
    respond_with(@customer_adress)
  end

  def edit
  end

  def create
    @customer_adress = CustomerAdress.new(customer_adress_params)
    @customer_adress.save
    respond_with(@customer_adress)
  end

  def update
    @customer_adress.update(customer_adress_params)
    respond_with(@customer_adress)
  end

  def destroy
    @customer_adress.destroy
    respond_with(@customer_adress)
  end

  private
    def set_customer_adress
      @customer_adress = CustomerAdress.find(params[:id])
    end

    def customer_adress_params
      params.require(:customer_adress).permit(:Customer_id, :address, :Location_id, :reference, :phone)
    end
end
