class WeekProgramsController < ApplicationController
  before_action :set_week_program, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @week_programs = WeekProgram.all
    respond_with(@week_programs)
  end

  def show
    respond_with(@week_program)
  end

  def new
    @week_program = WeekProgram.new
    respond_with(@week_program)
  end

  def edit
  end

  def create
    @week_program = WeekProgram.new(week_program_params)
    @week_program.save
    respond_with(@week_program)
  end

  def update
    @week_program.update(week_program_params)
    respond_with(@week_program)
  end

  def destroy
    @week_program.destroy
    respond_with(@week_program)
  end

  private
    def set_week_program
      @week_program = WeekProgram.find(params[:id])
    end

    def week_program_params
      params.require(:week_program).permit(:date, :Branch_id, :Product_id, :quantity)
    end
end
