class IdentutyTypesController < ApplicationController
  before_action :set_identuty_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @identuty_types = IdentutyType.all
    respond_with(@identuty_types)
  end

  def show
    respond_with(@identuty_type)
  end

  def new
    @identuty_type = IdentutyType.new
    respond_with(@identuty_type)
  end

  def edit
  end

  def create
    @identuty_type = IdentutyType.new(identuty_type_params)
    @identuty_type.save
    respond_with(@identuty_type)
  end

  def update
    @identuty_type.update(identuty_type_params)
    respond_with(@identuty_type)
  end

  def destroy
    @identuty_type.destroy
    respond_with(@identuty_type)
  end

  private
    def set_identuty_type
      @identuty_type = IdentutyType.find(params[:id])
    end

    def identuty_type_params
      params.require(:identuty_type).permit(:description)
    end
end
