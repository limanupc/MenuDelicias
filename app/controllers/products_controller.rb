class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  #before_action :set_category

  respond_to :html

  def index
    @products = Product.all
    #@products = @category.products
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    #@product = @category.products.new
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    #def set_category
    #  @category = Category.find(params[:category_id])
    #end

    def product_params
      params.require(:product).permit(:category_id, :name, :description, :price)
    end
end
