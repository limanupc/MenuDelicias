class CorrelativesController < ApplicationController
  before_action :set_correlative, only: [:show, :edit, :update, :destroy]

  # GET /correlatives
  # GET /correlatives.json
  def index
    @correlatives = Correlative.all
  end

  # GET /correlatives/1
  # GET /correlatives/1.json
  def show
  end

  # GET /correlatives/new
  def new
    @correlative = Correlative.new
  end

  # GET /correlatives/1/edit
  def edit
  end

  # POST /correlatives
  # POST /correlatives.json
  def create
    @correlative = Correlative.new(correlative_params)

    respond_to do |format|
      if @correlative.save
        format.html { redirect_to @correlative, notice: 'Correlative was successfully created.' }
        format.json { render :show, status: :created, location: @correlative }
      else
        format.html { render :new }
        format.json { render json: @correlative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correlatives/1
  # PATCH/PUT /correlatives/1.json
  def update
    respond_to do |format|
      if @correlative.update(correlative_params)
        format.html { redirect_to @correlative, notice: 'Correlative was successfully updated.' }
        format.json { render :show, status: :ok, location: @correlative }
      else
        format.html { render :edit }
        format.json { render json: @correlative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correlatives/1
  # DELETE /correlatives/1.json
  def destroy
    @correlative.destroy
    respond_to do |format|
      format.html { redirect_to correlatives_url, notice: 'Correlative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correlative
      @correlative = Correlative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correlative_params
      params.require(:correlative).permit(:branch_id, :document_type_id, :cor_serie, :cor_numero)
    end
end
