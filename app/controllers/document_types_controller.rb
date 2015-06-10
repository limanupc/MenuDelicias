class DocumentTypesController < ApplicationController
  before_action :set_document_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @document_types = DocumentType.all
    respond_with(@document_types)
  end

  def show
    respond_with(@document_type)
  end

  def new
    @document_type = DocumentType.new
    respond_with(@document_type)
  end

  def edit
  end

  def create
    @document_type = DocumentType.new(document_type_params)
    @document_type.save
    respond_with(@document_type)
  end

  def update
    @document_type.update(document_type_params)
    respond_with(@document_type)
  end

  def destroy
    @document_type.destroy
    respond_with(@document_type)
  end

  private
    def set_document_type
      @document_type = DocumentType.find(params[:id])
    end

    def document_type_params
      params.require(:document_type).permit(:description)
    end
end
