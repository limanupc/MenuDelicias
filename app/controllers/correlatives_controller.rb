class CorrelativesController < ApplicationController
  before_action :set_correlative, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @correlatives = Correlative.all
    respond_with(@correlatives)
  end

  def show
    respond_with(@correlative)
  end

  def new
    @correlative = Correlative.new
    respond_with(@correlative)
  end

  def edit
  end

  def create
    @correlative = Correlative.new(correlative_params)
    @correlative.save
    respond_with(@correlative)
  end

  def update
    @correlative.update(correlative_params)
    respond_with(@correlative)
  end

  def destroy
    @correlative.destroy
    respond_with(@correlative)
  end

  private
    def set_correlative
      @correlative = Correlative.find(params[:id])
    end

    def correlative_params
      params.require(:correlative).permit(:Branch_id, :document_type_id, :series, :number)
    end
end
