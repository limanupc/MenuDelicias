class WeekProgramsController < ApplicationController
  before_action :set_week_program, only: [:show, :edit, :update, :destroy]

  # GET /week_programs
  # GET /week_programs.json
  def index
    @week_programs = WeekProgram.all
  end

  # GET /week_programs/1
  # GET /week_programs/1.json
  def show
  end

  # GET /week_programs/new
  def new
    @week_program = WeekProgram.new
  end

  # GET /week_programs/1/edit
  def edit
  end

  # POST /week_programs
  # POST /week_programs.json
  def create
    @week_program = WeekProgram.new(week_program_params)

    respond_to do |format|
      if @week_program.save
        format.html { redirect_to @week_program, notice: 'Week program was successfully created.' }
        format.json { render :show, status: :created, location: @week_program }
      else
        format.html { render :new }
        format.json { render json: @week_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /week_programs/1
  # PATCH/PUT /week_programs/1.json
  def update
    respond_to do |format|
      if @week_program.update(week_program_params)
        format.html { redirect_to @week_program, notice: 'Week program was successfully updated.' }
        format.json { render :show, status: :ok, location: @week_program }
      else
        format.html { render :edit }
        format.json { render json: @week_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /week_programs/1
  # DELETE /week_programs/1.json
  def destroy
    @week_program.destroy
    respond_to do |format|
      format.html { redirect_to week_programs_url, notice: 'Week program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_program
      @week_program = WeekProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def week_program_params
      params.require(:week_program).permit(:prosemmen_fecha, :Branch_id, :Product_id)
    end
end
