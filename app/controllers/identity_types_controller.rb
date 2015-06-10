class IdentityTypesController < ApplicationController
  before_action :set_identity_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @identity_types = IdentityType.all
    respond_with(@identity_types)
  end

  def show
    respond_with(@identity_type)
  end

  def new
    @identity_type = IdentityType.new
    respond_with(@identity_type)
  end

  def edit
  end

  def create
    @identity_type = IdentityType.new(identity_type_params)
    @identity_type.save
    respond_with(@identity_type)
  end

  def update
    @identity_type.update(identity_type_params)
    respond_with(@identity_type)
  end

  def destroy
    @identity_type.destroy
    respond_with(@identity_type)
  end

  private
    def set_identity_type
      @identity_type = IdentityType.find(params[:id])
    end

    def identity_type_params
      params.require(:identity_type).permit(:description)
    end
end
