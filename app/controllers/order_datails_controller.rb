class OrderDatailsController < ApplicationController
  before_action :set_order_datail, only: [:show, :edit, :update, :destroy]

  # GET /order_datails
  # GET /order_datails.json
  def index
    @order_datails = OrderDatail.all
  end

  # GET /order_datails/1
  # GET /order_datails/1.json
  def show
  end

  # GET /order_datails/new
  def new
    @order_datail = OrderDatail.new
  end

  # GET /order_datails/1/edit
  def edit
  end

  # POST /order_datails
  # POST /order_datails.json
  def create
    @order_datail = OrderDatail.new(order_datail_params)

    respond_to do |format|
      if @order_datail.save
        format.html { redirect_to @order_datail, notice: 'Order datail was successfully created.' }
        format.json { render :show, status: :created, location: @order_datail }
      else
        format.html { render :new }
        format.json { render json: @order_datail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_datails/1
  # PATCH/PUT /order_datails/1.json
  def update
    respond_to do |format|
      if @order_datail.update(order_datail_params)
        format.html { redirect_to @order_datail, notice: 'Order datail was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_datail }
      else
        format.html { render :edit }
        format.json { render json: @order_datail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_datails/1
  # DELETE /order_datails/1.json
  def destroy
    @order_datail.destroy
    respond_to do |format|
      format.html { redirect_to order_datails_url, notice: 'Order datail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_datail
      @order_datail = OrderDatail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_datail_params
      params.require(:order_datail).permit(:Order_id, :Product_id, :peddet_cantidad, :peddet_precio, :peddet_sub_total)
    end
end
