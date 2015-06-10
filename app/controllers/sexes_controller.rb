class SexesController < ApplicationController
  before_action :set_sex, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sexes = Sex.all
    respond_with(@sexes)
  end

  def show
    respond_with(@sex)
  end

  def new
    @sex = Sex.new
    respond_with(@sex)
  end

  def edit
  end

  def create
    @sex = Sex.new(sex_params)
    @sex.save
    respond_with(@sex)
  end

  def update
    @sex.update(sex_params)
    respond_with(@sex)
  end

  def destroy
    @sex.destroy
    respond_with(@sex)
  end

  private
    def set_sex
      @sex = Sex.find(params[:id])
    end

    def sex_params
      params.require(:sex).permit(:description)
    end
end
